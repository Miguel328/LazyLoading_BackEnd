namespace LazyLoading.WebApi.UsesCases.Calculate
{
    using LazyLoading.Application.Commands.CalculateTrips;
    using LazyLoading.Application.Commands.ConvertContentInputFile;
    using LazyLoading.Application.Commands.ReadInputFile;
    using LazyLoading.Application.Commands.Register;
    using Microsoft.AspNetCore.Authorization;
    using Microsoft.AspNetCore.Mvc;
    using Newtonsoft.Json;
    using System;
    using System.Collections.Generic;
    using System.Threading.Tasks;

    /// <summary>
    /// Controlador de mudanzas
    /// </summary>
    [Authorize]
    [Route("api/[controller]")]
    public class MoveController : ControllerBase
    {
        private readonly IReadInputFileUseCase ReadInputFile;
        private readonly IConvertContentInputFileUseCase ConvertContentInputFile;
        private readonly ICalculateTripsUseCase CalculateTrips;
        private readonly IRegisterUseCase RegisterUseCase;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="readInputFile">Puerto para ejecutar la lectura del archivo txt</param>
        /// <param name="convertContentInputFile">Puerto para ejecutar la conversión del contenido del archivo txt</param>
        /// <param name="calculateTrips">Puerto para ejecutar el calculo de los viajes</param>
        /// <param name="registerUseCase">Puerto para registrar el logger en la base de datos</param>
        public MoveController(
            IReadInputFileUseCase readInputFile,
            IConvertContentInputFileUseCase convertContentInputFile,
            ICalculateTripsUseCase calculateTrips,
            IRegisterUseCase registerUseCase)
        {
            this.ReadInputFile = readInputFile;
            this.ConvertContentInputFile = convertContentInputFile;
            this.CalculateTrips = calculateTrips;
            this.RegisterUseCase = registerUseCase;
        }

        /// <summary>
        /// Método que permite el calculo optimo de viajes por día
        /// </summary>
        /// <param name="request">Parámetros de entrada</param>
        /// <returns></returns>
        [Route("Calculate")]
        [AllowAnonymous]
        [HttpPost]
        public async Task<IActionResult> Calculate(MoveRequest request)
        {
            try
            {
                // Se lee el archivo txt
                string[] lines = await this.ReadInputFile.Execute(request.File?.OpenReadStream());
                // Se convierte el contenido del archivo txt a una estructura entendible (Día, Elementos)
                Dictionary<int, List<int>> content = this.ConvertContentInputFile.Execute(lines).Result;
                // Se calcula el # de viajes basado en el # de bolsas con los elementos
                List<CalculateTripsUseCaseResult> result = this.CalculateTrips.Execute(content).Result;
                // Se registra el seguimiento en la base de datos
                await this.RegisterUseCase.Execute(request.Dni, JsonConvert.SerializeObject(result));
                return Ok(result);
            }
            catch (Exception ex)
            {
                throw new WebApiException(ex.Message);
            }
        }
    }
}