## References

The Preview build:

- https://github.com/liweinan/wildfly-preview-ci-experiment/actions/runs/9004694990/job/24738753648#step:4:168

The `wildfly-preview` build used as provisioned server:

- https://github.com/resteasy/resteasy/blob/5f35958f88ac5c20aa3b2b646d91af02d7664ea6/testsuite/integration-tests/pom.xml#L58-L104
- https://github.com/resteasy/resteasy/blob/5f35958f88ac5c20aa3b2b646d91af02d7664ea6/testsuite/integration-tests/pom.xml#L108-L124

- Relative blog post: [Using the Wildfly Channel manifest file to override the module version in provisioned WildFly server.](https://weinan.io/2023/12/09/jberet-manifest.html)

## To Do

- Add `pom.xml` to use the WildFly Preview build for testing.
- Add `use-wildfly-preview` profile.
- Run the above profile in CI.
