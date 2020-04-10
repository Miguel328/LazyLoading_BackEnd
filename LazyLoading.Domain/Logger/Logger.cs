namespace LazyLoading.Domain.Logger
{
    using LazyLoading.Domain.ValueObjects;
    using System;

    public sealed class Logger
    {
        public int Id { get; private set; }
        public DniProperty Dni { get; private set; }
        public DateTime Date { get; private set; }
        public string Trips { get; private set; }

        public Logger(DniProperty dni, DateTime date, string trips)
        {
            this.Dni = dni;
            this.Date = date;
            this.Trips = trips;
        }

        private Logger() { }

        public static Logger Load(int id, DniProperty dni, DateTime date, string trips)
        {
            Logger logger = new Logger
            {
                Id = id,
                Dni = dni,
                Date = date,
                Trips = trips
            };

            return logger;
        }
    }
}
