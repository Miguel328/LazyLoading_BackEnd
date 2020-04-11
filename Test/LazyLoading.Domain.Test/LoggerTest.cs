namespace LazyLoading.Domain.Test
{
    using LazyLoading.Domain.Logger;
    using System;
    using Xunit;

    public  class LoggerTest
    {
        [Fact]
        public void Logger_Should_Be_Loaded()
        {
            Logger logger = new Logger("123", DateTime.Now.Date, string.Empty);

            Assert.Equal("123", logger.Dni);
            Assert.Equal(DateTime.Now.Date, logger.Date);
            Assert.Equal(String.Empty, logger.Trips);
        }
    }
}
