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

    [Authorize]
    [Route("api/[controller]")]
    public class MoveController : ControllerBase
    {
        private readonly IReadInputFileUseCase ReadInputFile;
        private readonly IConvertContentInputFileUseCase ConvertContentInputFile;
        private readonly ICalculateTripsUseCase CalculateTrips;
        private readonly IRegisterUseCase RegisterUseCase;

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

        [Route("Calculate")]
        [AllowAnonymous]
        [HttpPost]
        public async Task<IActionResult> Calculate(MoveRequest request)
        {
            try
            {
                string[] lines = await this.ReadInputFile.Execute(request.File?.OpenReadStream());
                Dictionary<int, List<int>> content = this.ConvertContentInputFile.Execute(lines).Result;
                List<CalculateTripsUseCaseResult> result = this.CalculateTrips.Execute(content).Result;
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