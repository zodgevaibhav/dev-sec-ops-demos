1. Do license finder check using pipeline/Actions
2. Need to use container & use license finder image created by us. Ref: https://github.com/zodgevaibhav/dev-sec-ops-demos/tree/main/sast/license-finder
3. To use this image (first create image, push it to docker hub in your account)
4. Then use this image in pipeline separate job
    https://github.com/zodgevaibhav/api-gateway/blob/main/.github/workflows/continious-integration.yml
