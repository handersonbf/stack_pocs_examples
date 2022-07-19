package {{inputs.package_base}}.util;
//Refactor the package above, moving this class to the package of your choice

public enum PackageEnum {

    BASE_PACKAGE("{{inputs.package_base}}"),
    CONTROLLE_PACKAGE(".controller"),
    DOMAIN_PACKAGE(".domain"),
    SERVICE_PACKAGE(".service"),
    SERVICE_IMPL_PACKAGE(".service.impl"),
    REQUEST_PACKAGE(".controller"),
    RESPONSE_PACKAGE(".controller"),
    ENTITY_PACKAGE(".model"),
    DTO_PACKAGE(".model.dto"),
    CONFIG_PACKAGE(".config"),
    RESPOSITORY_PACKAGE(".repository");

    private final String packagePath;


    PackageEnum(String packagePath) {
        this.packagePath = packagePath;
    }

    public String getPackagePath() {
        if (this == BASE_PACKAGE) {
            return packagePath;
        }
        return BASE_PACKAGE.packagePath.concat(packagePath);
    }
}
