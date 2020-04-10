using LazyLoading.Domain.Trips;
using System.Collections.Generic;

namespace LazyLoading.Application.Results
{
    public sealed class CalculateTripsResult
    {
        public int Day { get; }
        public int Trips { get; }
        public List<Bag> Bags { get; }

        public CalculateTripsResult(int day, int trips, List<Bag> bags)
        {
            this.Day = day;
            this.Trips = trips;
            this.Bags = bags;
        }
    }
}
