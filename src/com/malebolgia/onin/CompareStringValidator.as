package com.malebolgia.onin
{
	import mx.validators.Validator;
	import mx.utils.ObjectUtil;
	import mx.validators.ValidationResult;
	import mx.utils.StringUtil;
 
	public class CompareStringValidator extends Validator {
		private var results:Array;
 
		public var valueCompare:Object;
 
		public function CompareStringValidator() {
			super();
		}
 
		protected override function doValidation(value:Object):Array {
			// Initialise the error table
            results = [];
 
            results = super.doValidation(value);        
 
			// If the table contains at least one element
			// we return it
            if (results.length > 0)
                return results;
 
 
			var strValue:String = String(value);
			var compareStrValue:String = String(valueCompare);
 
			// If it is not equal to stringCompare we return 0
			var result:int = ObjectUtil.stringCompare(strValue,compareStrValue);
			if(result) {
				var errorMessage:String = 
					StringUtil.substitute("The value {0} is not equal to the " +
 								"value {1}",strValue,compareStrValue);
					// Her we build a ValidationResult event
					// to add to the table
					results.push(new ValidationResult(true,null,
					      "Invalid comparison",errorMessage));
			}
 
			// We return the table
			return results;
		}
	}

}