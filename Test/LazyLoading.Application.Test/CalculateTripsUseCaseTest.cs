namespace LazyLoading.Application.Test
{
    using LazyLoading.Application.Commands.CalculateBags;
    using LazyLoading.Application.Commands.CalculateTrips;
    using LazyLoading.Domain.Trips;
    using NSubstitute;
    using System.Collections.Generic;
    using System.Threading.Tasks;
    using Xunit;

    public class CalculateTripsUseCaseTest
    {
        public readonly ICalculateBagsUseCase CalculateBagsUseCase;

        public CalculateTripsUseCaseTest()
        {
            CalculateBagsUseCase = Substitute.For<ICalculateBagsUseCase>();
        }

        [Fact]
        public async Task Calculate_Total_Trips()
        {
            var calculateTripsUseCase = new CalculateTripsUseCase(CalculateBagsUseCase);
            Dictionary<int, List<int>> elementsPerDay = new Dictionary<int, List<int>>
            {
                { 1, new List<int> { 30, 30, 1, 1 } }
            };

            List<CalculateTripsUseCaseResult> result = await calculateTripsUseCase.Execute(elementsPerDay);

            Assert.True(result.Count == 0);
        }
    }
}
