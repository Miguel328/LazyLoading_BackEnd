namespace LazyLoading.Application.Commands.CalculateTrips
{
    using System.Collections.Generic;
    using System.Threading.Tasks;

    public interface ICalculateTripsUseCase
    {
        Task<List<CalculateTripsUseCaseResult>> Execute(Dictionary<int, List<int>> elementsPerDay);
    }
}
