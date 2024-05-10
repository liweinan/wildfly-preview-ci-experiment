## References

The Preview build:

- https://github.com/liweinan/wildfly-preview-ci-experiment/actions/runs/9004694990/job/24738753648#step:4:168

The `wildfly-preview` build used as provisioned server:

- https://github.com/resteasy/resteasy/blob/5f35958f88ac5c20aa3b2b646d91af02d7664ea6/testsuite/integration-tests/pom.xml#L58-L104
- https://github.com/resteasy/resteasy/blob/5f35958f88ac5c20aa3b2b646d91af02d7664ea6/testsuite/integration-tests/pom.xml#L108-L124

The build that is using the main branch of WildFly:

- https://github.com/liweinan/wildfly-preview-ci-experiment/actions/runs/9020147535/job/24784827116#step:6:2

```bash
Run mvn install '-Dversion.org.wildfly=33.0.0.Beta1-SNAPSHOT' '-Dversion.wildfly-maven-plugin=5.0.0.Final'
```

- https://github.com/liweinan/wildfly-preview-ci-experiment/actions/runs/9020147535/job/24784827116#step:6:35

```bash
[INFO] Building wildfly-preview-ci-experiment 44
```

---

## To Do

- Add `pom.xml` to use the WildFly Preview build for testing.
- Add `use-wildfly-preview` profile.
- Run the above profile in CI.


## Relative Blog Posts

- [Using the Wildfly Channel manifest file to override the module version in provisioned WildFly server.](https://weinan.io/2023/12/09/jberet-manifest.html)

## Usage

To use the `provision-preview` profile, run the following command:

```bash
➤ mvn clean install -Pprovision-preview
...
[INFO] --- wildfly:5.0.0.Final:provision (server-provisioning) @ wildfly-preview-ci-experiment ---
Downloading from central: https://repo.maven.apache.org/maven2/org/wildfly/wildfly-preview-feature-pack/30.0.1.Final/wildfly-preview-feature-pack-30.0.1.Final.zip
Downloaded from central: https://repo.maven.apache.org/maven2/org/wildfly/wildfly-preview-feature-pack/30.0.1.Final/wildfly-preview-feature-pack-30.0.1.Final.zip (4.1 MB at 108 kB/s)
[INFO] Provisioning server in /Users/weli/works/wildfly-preview-ci-experiment/target/wildfly
```

Please note the `clean` phase must be run in case the cache is used.

Run with customized parameters:

```bash
➤ mvn clean install '-Dversion.org.wildfly=33.0.0.Beta1-SNAPSHOT' '-Dversion.wildfly-maven-plugin=5.0.0.Final' '-Pprovision-preview'
```
