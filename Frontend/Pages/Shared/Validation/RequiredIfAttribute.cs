// Pages/Shared/Validation/RequiredIfAttribute.cs

using System;
using System.ComponentModel.DataAnnotations;

namespace Frontend.Pages.Shared.Validation
{
    public class RequiredIfAttribute : ValidationAttribute
    {
        private readonly string _propertyName;
        private readonly string _expectedValue;

        public RequiredIfAttribute(string propertyName, string expectedValue)
        {
            _propertyName = propertyName;
            _expectedValue = expectedValue;
        }

        protected override ValidationResult? IsValid(object? value, ValidationContext validationContext)
        {
            var property = validationContext.ObjectType.GetProperty(_propertyName);
            if (property == null)
                return new ValidationResult($"Unknown property: {_propertyName}");

            var propertyValue = property.GetValue(validationContext.ObjectInstance, null)?.ToString();

            if (propertyValue == _expectedValue && string.IsNullOrWhiteSpace(value?.ToString()))
            {
                return new ValidationResult(ErrorMessage);
            }

            return ValidationResult.Success;
        }
    }
}
