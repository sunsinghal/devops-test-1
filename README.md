# devops-test-1
GitHub repo for devops-test-1

# Docker multi stage builds #

Multi-stage builds is a feature introduced in Docker 17.05 that allows you to create multiple intermediate images from the same Dockerfile. This feature in Dockerfiles enables you to create smaller container images with better caching and smaller security footprint.

With multi-stage builds, you can use multiple FROM statements in your Dockerfile. Each FROM instruction can use a different base, and each of them begins a new stage of the build. This is very useful in not include your application build dependencies in your final image, allowing you to have a much more smaller image. You can selectively copy artifacts from one stage to another, leaving behind everything you don’t want in the final image. Refer to Dockerfile in the repository to get an idea.

# CI Pipeline #
![Showing CI Pipeline](CIPipeline.png?raw=true "CI Pipeline View")