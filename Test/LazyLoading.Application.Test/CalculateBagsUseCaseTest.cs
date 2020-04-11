namespace LazyLoading.Application.Test
{
    using LazyLoading.Application.Commands.CalculateBags;
    using LazyLoading.Domain.Trips;
    using System.Collections.Generic;
    using System.Threading.Tasks;
    using Xunit;

    public class CalculateBagsUseCaseTest
    {
        [Fact]
        public async Task Calculate_Total_Bags()
        {
            var calculateBagsUseCase = new CalculateBagsUseCase();

            List<Element> elements = new List<Element>
            {
                new Element(30),
                new Element(30),
                new Element(1),
                new Element(1)
            };

            List<Bag> result = await calculateBagsUseCase.Execute(elements);

            Assert.True(result.Count == 2);
        }
    }
}
