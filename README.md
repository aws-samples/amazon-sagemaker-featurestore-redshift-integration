# Building ML features with Amazon SageMaker using data from Amazon Redshift

## Background
Many organizations have made large investments in enterprise data lakes and data warehouses and are now looking to scale up their use of ML to deliver on a broad set of use cases from propensity models to fraud detection to customer lifetime value. As they move from a handful of models to dozens or hundreds, these same organizations are looking to use a feature store to share ML features across teams and models, while improving time to market and model accuracy. This blog shows how to take advantage of enterprise data warehouse of Amazon Redshift to produce shared ML features, from the data scientist's point of view.

## Scenario Covered
- Connecting to existing data source in Redshift
- Exploring existing data
- Creating new features
- Publishing features to SageMaker Feature Store
- Using SageMaker to train and inference
- Checking inference result from Redshift
 
## Contents
In this project, we show you 3 options(Please see 4a,4b,4c)) on how to prepare Redshift source data at scale in Amazon SageMaker including loading data from Redshift, doing feature engineering and ingesting features into SageMaker Feature Store:


## Prerequisites

To continue with the examples, you need to create the required AWS resources. To do this, we provide <a href="https://aws-blogs-artifacts-public.s3.amazonaws.com/artifacts/ML-14589/sm-redshift-demo-vpc-cfn-v1.yaml" target="_blank">AWS CloudFormation template</a> to create a stack that contains the resources. When you create the stack, AWS creates a number of resources in your account. 

Resources - SageMaker Domain (A domain includes an associated Amazon Elastic File System (EFS) volume, a list of authorized users, and a variety of security, application, policy, and Amazon Virtual Private Cloud (VPC) configurations), Redshift Cluster, Redshift Secret, AWS Glue connection for redshift, Lambda to setup required resources and related execution roles and policies.

Please ensure that you don't have already 2 Studio Domains in the region you are running the CloudFormation. This is the maximum allowed number of domains in each supported Region.


- **[1-uploadJar.ipynb](1-uploadJar.ipynb)**, **[2-loadredshiftdata.ipynb](2-loadredshiftdata.ipynb)**, **[3-createFeatureStore.ipynb](3-createFeatureStore.ipynb)**: Environment Setup.
- **[4a-glue-int-session.ipynb](4a-glue-int-session.ipynb)**: Glue interactive session on SageMaker Studio (in dev.) and Glue job (in prod.) with SparkSQL.
- **[4b-processing-rs-to-fs.ipynb](4b-processing-rs-to-fs.ipynb)**: SageMaker Processing Job with SparkSQL. Another alternative way is to use [SageMaker Feature Store Feature Processing](https://docs.aws.amazon.com/sagemaker/latest/dg/feature-store-feature-processing.html).
- **[4c-data-wrangler-transformations.md](4c-data-wrangler-transformations.md)** , **[4c-1-redshift-datawrnagler-place.png](4c-1-redshift-datawrnagler-place.png)**, **[4c-2-redshift-datawrangler-rating.png](4c-2-redshift-datawrangler-rating.png)**, **[4c-3-redshift-datawrangler-user.png](4c-3-redshift-datawrangler-user.png)**: SageMaker Data Wrangler in a No/Low code way.
- **[5-classification-using-feature-groups.ipynb](5-classification-using-feature-groups.ipynb)**: Using processed features to train a model and do inference.
- **[6-read-results-in-redshift.ipynb](6-read-results-in-redshift.ipynb)**: Query the inference result and join user profiles in Redshift.


## Contributors

Akhilesh Dube, Sr. Analytics SA

Ren Guo, Mgr. GCR Analytics SSA

Sherry Ding, Sr. AI/ML Specialist SA


## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the  [LICENSE](LICENSE) file.