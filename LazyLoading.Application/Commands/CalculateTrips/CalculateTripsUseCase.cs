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

        public Task<List<CalculateTripsUseCaseResult>> Execute(Dictionary<int, List<int>> elementsPerDay)
        {
            List<CalculateTripsUseCaseResult> results = new List<CalculateTripsUseCaseResult>();

            try
            {
                TotalDaysProperty totalDays = elementsPerDay.Count;

                for (int indexDay = 1; indexDay <= totalDays; indexDay++)
                {
                    List<int> data = elementsPerDay[indexDay];
                    List<Element> elements = new List<Element>();

                    foreach (int weigh in data)
                    {
                        Element element = new Element(weigh);
                        elements.Add(element);
                    }

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
