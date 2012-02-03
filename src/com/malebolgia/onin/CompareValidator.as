package com.malebolgia.onin
{
	/* Usage
	 <coreutil:CompareValidator
      id="comparePasswords"
      source="{password2}"
      property="text"
      valueToCompare="{password.text}"
      errorMessage="Passwords do not match."
  />
	*/
	import mx.validators.ValidationResult;
    import mx.validators.Validator;

	public class CompareValidator extends Validator
	{
		public function CompareValidator()
		{
			super();
		}
		
	override protected function doValidation(value:Object):Array {
       
       var results:Array = [];
       var srcVal:Object = this.getValueFromSource();
 
       if (srcVal != valueToCompare) {
           results.push(new ValidationResult(true, null, "Match",errorMessage));
       }
       return results;

      }
		
	}
}