package org.swp.marxism.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CheckSpanValidator implements ConstraintValidator<CheckSpan, String> {


	public void initialize(CheckSpan constraintAnnotation) {

	}

	public boolean isValid(String value, ConstraintValidatorContext context) {
		return false;
	}


}