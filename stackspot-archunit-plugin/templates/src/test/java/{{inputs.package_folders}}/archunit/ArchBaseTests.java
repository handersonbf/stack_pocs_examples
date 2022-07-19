package {{inputs.package_base}}.archunit;
//Refactor the package above, moving this class to the package of your choice

import {{inputs.package_base}}.util.PackageEnum;
import com.tngtech.archunit.junit.AnalyzeClasses;
import com.tngtech.archunit.junit.ArchTest;
import com.tngtech.archunit.lang.ArchRule;

import static com.tngtech.archunit.lang.syntax.ArchRuleDefinition.classes;

@AnalyzeClasses(packages = "{{inputs.package_base}}")
public class ArchBaseTests {

    @ArchTest
    static final ArchRule classes_controller_must_be_in_the_controller_package =
            classes().that()
                    .haveSimpleNameEndingWith("Controller")
                    .should()
                    .resideInAnyPackage(PackageEnum.CONTROLLE_PACKAGE.getPackagePath());

    @ArchTest
    static final ArchRule classes_of_service_must_be_in_the_service_package =
            classes().that()
                    .haveSimpleNameEndingWith("Service")
                    .should()
                    .resideInAnyPackage(PackageEnum.SERVICE_PACKAGE.getPackagePath());

    @ArchTest
    static final ArchRule classes_repository_must_be_in_package_repository =
            classes().that()
                    .haveSimpleNameEndingWith("Repository")
                    .should()
                    .resideInAnyPackage(PackageEnum.RESPOSITORY_PACKAGE.getPackagePath());

    @ArchTest
    static final ArchRule configuration_classes_must_be_in_the_config_package =
            classes().that()
                    .haveSimpleNameEndingWith("Config")
                    .should()
                    .resideInAnyPackage(PackageEnum.CONFIG_PACKAGE.getPackagePath());

}