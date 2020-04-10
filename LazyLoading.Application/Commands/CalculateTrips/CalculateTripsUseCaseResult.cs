namespace LazyLoading.Application.Commands.CalculateTrips
{
    using LazyLoading.Application.Results;
    using LazyLoading.Domain.Trips;
    using System.Collections.Generic;

    public sealed class CalculateTripsUseCaseResult
    {
        public CalculateTripsResult CalculateTrips { get; }

        public CalculateTripsUseCaseResult(int day, int trips, List<Bag> bags)
        {
            this.CalculateTrips = new CalculateTripsResult(day, trips, bags);
        }
    }
}
