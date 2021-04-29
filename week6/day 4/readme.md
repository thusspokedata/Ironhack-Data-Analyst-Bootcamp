![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Inferential statistics - T-test & P-value

### Instructions

1. We will have another simple example on two sample t test (pooled- when the variances are equal). But this time this is a one sided t-test

In a packing plant, a machine packs cartons with jars. It is supposed that a new machine will pack faster on the average than the machine currently used. To test that hypothesis, the times it takes each machine to pack ten cartons are recorded. The results, in seconds, are shown in the tables in the file `files_for_lab/machine.txt`.
Assume that there is sufficient evidence to conduct the t test, does the data provide sufficient evidence to show if one machine is better than the other

2. An additional problem (not mandatory): In this case we can't assume that the population variances are equal. Hence in this case we cannot pool the variances.
   Independent random samples of 17 sophomores and 13 juniors attending a large university yield the following data on grade point averages. Data is provided in the file `files_for_lab/student_gpa.txt`.
   At the 5% significance level, do the data provide sufficient evidence to conclude that the mean GPAs of sophomores and juniors at the university differ?

   Test statistics can be calculated as: [link to the image - Test statistics calculation for Unpooled Variance Case](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/7.04/7.04-unpooled_variances.png)

   Degrees of freedom is `(n1-1)+(n2-1)`.
