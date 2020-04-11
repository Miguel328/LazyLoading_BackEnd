namespace LazyLoading.Application.Commands.CalculateTrips
{
    using LazyLoading.Application.Commands.CalculateBags;
    using LazyLoading.Domain.Trips;
    using LazyLoading.Domain.ValueObjects;
    using System;
    using System.Collections.Generic;
    using System.Threading.Tasks;

    public sealed class CalculateTripsUseCase : ICalculateTripsUseCase
    {
        private readonly ICalculateBagsUseCase CalculateBagsUseCase;

        public CalculateTripsUseCase(ICalculateBagsUseCase calculateBagsUseCase)
        {
            this.CalculateBagsUseCase = calculateBagsUseCase;
        }

        /// <summary>
        /// Calcula el total de viajes por días con el total de bolsas y sus elementos
        /// </summary>
        /// <param name="elementsPerDay"></param>
        /// <returns></returns>
        public Task<List<CalculateTripsUseCaseResult>> Execute(Dictionary<int, List<int>> elementsPerDay)
        {
            List<CalculateTripsUseCaseResult> results = new List<CalculateTripsUseCaseResult>();

            try
            {
                // Se toma el total de días
                TotalDaysProperty totalDays = elementsPerDay.Count;

                for (int indexDay = 1; indexDay <= totalDays; indexDay++)
                {
                    List<int> data = elementsPerDay[indexDay];
                    List<Element> elements = new List<Element>();

                    foreach (int weigh in data)
                    {
                        // Se valida la información por cada elemento
                        Element element = new Element(weigh);
                        elements.Add(element);
                    }

                    // Se calcula el total de bolsas que por día
                    // Se hace una relación de 1 bolsa = 1 viaje
                    List<Bag> bags = this.CalculateBagsUseCase.Execute(elements).Result;
                    results.Add(new CalculateTripsUseCaseResult(indexDay, bags.Count, bags));
                }
            }
            catch (Exception exception)
            {
                throw new Application.ApplicationException(exception.Message);
            }

            return Task.FromResult(results);
        }
    }
}
