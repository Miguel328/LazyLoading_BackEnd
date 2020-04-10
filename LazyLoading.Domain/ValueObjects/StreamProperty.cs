namespace LazyLoading.Domain.ValueObjects
{
    using System.IO;

    public class StreamProperty
    {

        public Stream Value { get; set; }

        public override string ToString()
        {
            return Value.ToString();
        }

        public static implicit operator Stream(StreamProperty property)
        {
            return property.Value;
        }

        public override bool Equals(object obj)
        {
            if (obj is null)
            {
                return false;
            }

            if (ReferenceEquals(this, obj))
            {
                return true;
            }

            if (obj is string)
            {
                return obj.ToString() == Value.ToString();
            }

            return ((StreamProperty)obj).Value == Value;
        }

        public override int GetHashCode()
        {
            return Value.GetHashCode();
        }
    }
}
