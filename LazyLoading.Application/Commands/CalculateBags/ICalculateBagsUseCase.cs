namespace LazyLoading.Application.Commands.CalculateBags
{
    using LazyLoading.Domain.Trips;
    using System.Collections.Generic;
    using System.Threading.Tasks;

    public interface ICalculateBagsUseCase
    {
        Task<List<Bag>> Execute(List<Element> elements);
    }
}
