package net.kebernet.configuration.client.model;

import com.google.j2objc.annotations.ReflectionSupport;

/**
 * Created by rcooper on 7/3/17.
 */
@ReflectionSupport(ReflectionSupport.Level.FULL)
public class Setting {

    private String name;
    private String description;
    private String validationExpression;
    private String type;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getValidationExpression() {
        return validationExpression;
    }

    public void setValidationExpression(String validationExpression) {
        this.validationExpression = validationExpression;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
