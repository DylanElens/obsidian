---

excalidraw-plugin: parsed
tags: [excalidraw]

---
==⚠  Switch to EXCALIDRAW VIEW in the MORE OPTIONS menu of this document. ⚠==


# Text Elements
Datamining ^xAeMnaSc

Data driving discovery of models and 
patterns from massive observational data sets ^Rplb7Dgy

The types of datamining
tasks:
1. Classification
2. clustering
3. association rule discovery
4. Regression
5. Devation detection ^mBLck91f

Given a collection of 
revords[training set]
->
find a model for class attribute
as a function of the values of other
attributes.

Goal: previously unseen records should be 
assigned a class as accurately as possible

Example: Reduce the coast of mailing by
targeting a set of consumeres likely to buy a
new cell-phone product. ^f5lPJB12

Clustering:
Given a set of data points
each having the same set of 
attributes and a similarity measure among them,
find clusters such that:
    - Data points in one cluster are more similar to 
      one another
    - Data points in seperate clusters are less
      similar to one another

Different ways to measure similarity:
1. Euclidean distance if attributes are continuos.
2. Other problem specific measures.

Example market segmentation.
Goal. Subdivide a market into distinct subsets of customers 
where any subset may conceivably be selected as a market 
target to be reached with a distinct marketing mix ^dPAfF3ah

Assocation rule discovery

Given a set of records each of which contain
some number of items from a given collection: Produce
dependency rules which will predict occurrences of an item
based on occurrences of other items.

Example Supermarket shelf management.
Goal is to identify items that are bought together by
sufficiently many customers. We do this by processing the
point of sale data collected with barcode scanners to find
dependencies among items. ^ZnKU4Ei4

Regression

Predict a value of a continuos valued variable based
on values of other variables assuming a linear or non-linear
model of dependency.

Example:
    - predicting sales amounts of new product based
      on advertising expenditure.
    - predicting wind velocities as a function of temperature
      humidity, air pressure, etc.
    - Stock market stuff.
 ^aXMpdziv

Deviation detection
Detect significant deviations 
from normal behaviour.

Example
  - credit card fraud detection.
  - Network intrusion detection.  ^HC7u8o1k

Components of datamining algorithms

1. Representation
    - Determinging the nature and structure of the representation to be used
2. Score function
    - Quantifying and comparing how well different representations fit the data
3. Search/Optimization method
    - Choosing an algorithmic process to optimize the score function
4. Data management:
    - Deciding what principles od data management are required to implement the algorithms effciently
 ^VdCKcG9w

What is data?
Data is a collection of objects
and their attributes.

An attributes is a property or 
characteristic of an object
    - Example: Eye color of a person
Attribute is also known as variable
field, characteristic, feature etc,

A collection of attributes descirbe
and object.
An object is also known as a record,
point, case, sample, entity or instance. ^R51B6hBU

Attribute values:
attribute values are numbers or symbolls assigned 
to an attribute.
Disticntion between attributes and attributes values:
    - same attribute can be mapped to different values
    - Different attributes can be mapped to the same set of values ^96Wp3ThB

Properties of Attribute values
Mathematical properties:
    - Distinctness: =, !=
    - Order: <, >
    - Addition: +, -
    - Multiplication: *, /

The type of an attribute depends
on which of these apply.

    - Nominal attribute: Disctinctness
    - Ordinal attribute: Distinctness and order
    - Interval attribute: Distinctness, order, addition
    - Ratio attribute: all 4 properties

 ^v94RUJ42

Example of the 4 types:

Nominal
    - Id numbers, eye color
Ordinal
    - Rankings, grades, height
Interval
    - Calendar dates, temperatures,
Ratio
    - emerature in kelvin, length, time, counts ^oXqxVBvK

Discrete and continuous attributes:
Discrete attribute:
    - Has only a finite of countable inifinite set of values
    - Examples -> zip cordes, counts, or the set of words in a collection of documents
    - often represented as integer variables
    - Note: Binary attributes are a special case of discrete attributes

Continuous attribute
    - has real numbers as attribute values
    - examples: temperature, hieght or weight
    - Continuous attributes are typically represented as floating-point variables

Practically any value can only be measured and represented in a finite way. ^FrSxCeHq

Types of datasets

1. record
    - Data matrix
    - Document data
    - Transaction data

2. Graph
    - World wide web
    - Molecular structures

3. Ordered
    - Spatial data
    - Temporal data
    - Sequential data
    - Genetic sequence data. ^d34JDv41

Data that consists of a collection of
records, each of which consists of a fixed set
of attributes. ^lZ5JTsit

Each document becomes a term vectory
    - The value of each component is the number of times
      the corresponding term occors in the document ^Bll6Qv61

Transaction data is a special type of record data where each record invoves a set of items
    - for example, the set of products purchased by a customer during one
      shopping trip constitures a transaction, while the individual products are the items.
 ^shHIDvM4

Data quality
Data is high quality if
    - Are fit for their intended use
    - Correctly represent the phenomena they correspond to

There are many problems with data ^IgTQd2Lv

Noise
Noise refers to modification of original values
example -> Distortion of a person's voice when talking on a poor phone connection

Outliers
These are data objects with
characteritics that are consideably
different from most of the other data
objects in the data set


Missing values
reasons:
     - information is not collected
    - Attributes may not be applicable

handling missing values
    - Eliminatte data objects
    - Estimate missing values
    - Ignore missing value during analysis
    - replace with all possible values.

Duplicate data
Example -> same person with multiple email addresses. ^SGLJaIYb

Data preprocessing ^ksqRhSov

Aggregation
Combining multiple attributes into a single attribute
purpose:
    - Data reduction
    - change of scale
    - More stable data -> aggregated data tendst o have less variablility ^84Z75Pqp

Sampling
Sampling is the main technique employed for data selection

statisticians use sampling because obtaining all data of interest
is too expensive or time consuming.

Sampling is used in datamining because precessing all data of interests
is to expensive or time consuming.
Key principle of effective sampling
    - Using a sample will work almost as well as using the entire
      data set if the sample is representative.
    - A sample is representative if it has approximately the same property
      as the original data ^7SvPCOf9

Types of sampling
1. simple random sampling
2. Sampling without replacement
    - as each item is selected it is removed from the population
3. Sampling with replacement
    - Objexts are not removed from the population as they are selected for the sample
    - The same object can be picked up more than once
4. Stratified sampling
    - Split the data into sevaral partitions; then draw random sapmles from each partition
 ^SHm7dKVN

Dimensionality reduction
Problem -> when dimensionality increases, data becomes increasingly sparse
in the space it occupies. This means that definitions of density and distance
(important for clustering and outlier detection) may become less meaningful

Purpose
    - Avoid curse of dimensionality
    - reduce amount of time and memory required by datamining algorithms
    - Allow data to be mroe easily visualized
    - may help to elimininate irrelavant features or reduce noise.
Techniques:
    - Principle component analysis
    - Singular value decomposition ^pEiB7ZHy

Feature subset selection
techniques:
    - Brute force approach
    - Embedded approaches -> feature selection occurs 
      naturally as part of the dataming algorithm
    - Filter approaches: features are selected before data mining algorith
      is run
    - Wrapper approaches -> use the datamining algorithms as a black
      box to find best subset of attributes. ^urQw10aH

Feature creation
create new attributes that can capture
the important information in a data set
much mroe efficiently than the original attributes
combining features
    - BMI -> instead of length - weight ^mV2olxCr

Attribute transformation
Function that maps a set of attribute values
to a new set of attribute values such that each old value
can be identified with one of the new values
For many data mining algorithms continuous features may be preferable
be more or less normally distributed.
 ^7Pap96uv

Principle component analysis

The direction with the largest variation makes the first Principle component
The direction orthogonal to the principle direction with then the largest variation
makes the second principle component, and so on
These happen to correspond to eigenvectors of the covariance matrix, ordered by their
corresponding eigenvalues.

Equivalent: Singular values decomposition on mean-centered data.
 ^pkGScdo7

Basic statistics

Mean is the average of some attribute in the dataset

variance measure the spread or dispersion of data points 
around the mean.It quantifies how much each data point differs
from the mean.
    - A high variance indicates that the data points are spread out, 
    - A low variance indicates they are closely clustered around the mean.
    - formula: s^2 = sum((data_point - mean)^2)/(sample_size - 1 )
 ^Qk4a6YW3

Example variance
Data set:
[6, 9, 14, 10, 5, 8, 11]

s^2 = sum((data_point - mean)^2)/(sample_size - 1)

sample_size = 7
mean =  (6 + 9 + 14 + 10 + 5 + 8 + 11) / sample_size
mean =  9

 ^Kb1RGglg

6 ^YaQyN86j

9 ^ctaaK5yt

14

10

5

8

11 ^ieIXMhSe

-3

0

5

1

-4

-1

2 ^ruvquWbz

data_point - mean ^dcEloLkq

(data_point - mean )^2 ^f39BxG1u

9

0

25

2

16

1

4 ^CQU60XBB

63 ^qR2IpWdW

56 ^wrHX05cC

S^2 = 56/(7-1) = 9.3 ^OQxPTp8M

The goals is to find a projection that captures the largest
amount of variation in the data

- Find the eigenvectors of the covariance matrix
- The eigenvectors define the new space
- Example -> the largest varation in the direction of e_1, the 
  first principle component.
- Next principle component e_2 is perpendicular to
 e_1



- project the data points 
  onto the first few
  principle components

 ^9GzO1MC6

e_1 ^RQp7VaxK

e_2 ^kOomCPGU

X_1 ^osMopkAE

x_2 ^OiM0xEhO

Similarity
is a numirical measure of how two alike two objects are.
Is higher when objects are more alike
often falls in the range of [0,1]

Dissimilarity
Numirical measure of how different to objects are
lower when objests are more alike
minumum is 0.
Upper limit varies.

Proximity  refers to a similarity or dissimilarity ^FA5PbEUw

For simple attributes

Nominal attributes p and q:
    d = 0 -> p = q
    d = 1 -> p != q
s = 1 - d

Ordinal attributes -> map n distinct values to integers from 0 to n - 1

d = (abs(p - 1)) / (n - 1)
s = 1 - d

Interval or ration attributes
d = abs(p - q ) 
s = 1/(1 + d) ^OwJ1HVmi

Stastics ^uRW9ZDzk

Probability

 ^qM1ryo3O

A probability is a real-values function 
defined on the sample space Ω ^veZMpcNz

Random variable
Quantity of interest related to a random experiment
    - X equals the number of heads when flipping a coin 30 times
    - X is the time required to get back home

Probability of distribution for a discrete random variable X
 ^zllxtzrC

Example
    - A fair die is rolled 4 times
    - X is number of times the outcome is 3 or higher
    - Possible outcomes -> 6^4 = 1296
    - possible values of X are 0,1,2,3,4
 ^z4yo4LJu

Probablity density function
Questions:
    - Probability that X takes a single particlar value equals?
    - Can f(x) be negative
    - can f(x) be larger than 1
 ^M7mxkaYE

Guassian distribution
    - Applicable in many fields due to the central limit theorem
    - Location parameter(mean) and spread(standard devation)
 ^YP7TKSf8

Binomial distribution
    - Number of successes in a number of independant yes/no trails
        -> # sixes in a game of dice
        -> Tossing a coin many times ^y3FrjbRE

Poisson Distribution
    - Probability of numbers of events occuring in a fixed
      period of time and space
        -> # of people entering a builder per hour
        -> # of hedgehogs killed per km of road
        -> # of mutations per 100.000 base paris
        -> # of students dozing of per minute
 ^VYOXrQOq

Exponential distribution
    - Probability density of times between events
        -> time it takes before the next person
           enters the builder
        -> time between hits on a website
    - Rate parameter λ

f(x ; λ) = λ e^(-λ x) ^AQ8inZD5

Gamma distribution
"Guassian" for only positive values
    - Distribution of incomes
    - Lifetime of light bulbs ^zVZ42GnX

Chi-square distribtuion

This is often used in
statistical significance tests
 ^PYvjykIi

Classification ^egeZIM0h

the task of assinging objects to one of several
predefined categories ^JVRgH9yU

Given a collection of records(training set)
Each record contains a set of attributes,
of it's attribute is the class.
Find a model for the class attribute as a function
of the values of other attributes.
The goals is to assign previously unseen record to a class
as accurately as possible.

We can use a test set to determine the accuracy of the model. ^1JUzxw5F

Classification
model
/target
function ^qf3rs3eV

Input

Attribute set
    (X) ^UlVCn88k

Output

Class label
    (Y) ^0GfTRQrG

A classification model can be used for the following things
    - Discriptive modelling
        -> A model can serve as an explanatory tool to
           Distinguish betweeen objects of different classes
                -> classifying creditcard transactions as legitimate or fruadulant
    - Predictive modelling
        -> A model can also be used to predict a class label of unknown records.
            -> Predicting tumor cells as benign or malignant


Classification techniques are most suited for predicting or desribing data sets 
with binary or nominal categories. They are less effective for ordinal categories(e.g to 
classify a person as a member of high, medium, or low, income group) because
they do no consider the implicit order among categories.   ^PH5hVfRp

Solving a classification problem and the structure of a model

A classification technique(or classifier) is a systematic approach to 
building classification models from in input data set.
    -> examples: Decision tree classifiers, rule-based classifiers, etc

Each technique employs a learning algorithm to identify a model
that best fits the relationship between the attribute set and the 
class label of the data.

The model generated by a learning algorithm should both
    1. fithe the input data well
    2. correctly predict the class labels of recrods it has never seen.

Therefore a key objective of learning algorithm is to build models with good
generalization capability. Example:  ^xkqUpmHV

Evaluation of the performance of a classification model is based on the 
counts of tests records correctly and incorrectly predicted by the model.
These counts in a table are called a confusion matrix.
For binary attributes it looks like this:
 ^xX5tyrKh

From this we can make the following formula's
 ^ZY4WEBzh

accuracy =  ^Df5GmAA9

Number of correct predictions ^OGH2Eqzf

Total number of predictions ^KEH8rdRP

Error rate = ^Jftf2xy6

Number of wrong predictions ^ewdUVWeJ

Total number of predictions ^OuqA5XMu

Decision Tree ^VP7pSpLF

In a decision tree we have 3 types of nodes
    1. A root node that has no incoming edges
      and zero or more outgoing edges
    2. Internal nodes, each of which has exectly
       one incoming edge and two or more outgoing 
       edges
    3. Leaf/Terminal nodes, each of which has exactly
       one incoming edge and no outgoing edges. ^TdlNZOM5

In a decision tree, each leaf node is assigned a class label.
(Non-mamal, mammal). The non-terminal nodes, which include
the root and internal nodes contain attribute test
conditions to separate records that have different characteristics

Classifying a test record is straigtforward once a decision tree is 
constructed ^QPG7dG0B

Building a decision tree
We will use hunts algorithm for building a decision tree

In Hunt's algorithm, a decision tree is grown in a recursive fashion
by partitioning the training records into successively purer subets.


Let D_t be the set of training records that are associated with node 
t and y = {y_1, y_2, ..., y_c} be the class labels.

Step 1
    If all the records in D_t belong to the same class y_t, then t is a
    leaf node labeld by y_t

Step 2
    If D_t contains records that belong to more than one class
    an attribute test condition is selected to partion the records
    into smaller subsets. A child node is created for each outcome
    of the test condition and the records D_t are distrubted to
    the childres based on the outcomes. Then we recusrively apply
    the the child nodes.
 ^Me5jFI4r

Step 1.
We check wether all records in D_t belong to the same class.
In our case the class "Defaulted borrower" has the values
Yes and No. As we can see not all records belong to the same step.

Step 2.
There are records belonging to more than one class. We apply an attribute
test condition to partitions the records into smaller subsets.

So, we look at the class attribute and we see most people do not borrow any
money, emaning we get a tree that looks like:  ^r5Ox1p4X

Defualted = no ^iFYtCxfB

The tree however needs to be refined since the root node contains records from
both classes. The croeds are subs1uently divided into smaller subsets based the outcomes
of home owner test condition:  ^fsXD7QlN

homeowner ^KcNoEToT

Defualted = no ^qo1BOswW

Defualted = no ^94dxrmCh

Yes ^MJuRbcWS

No ^COMSCsYg

Notice that all borrowers who are homeowners successfully repaid their loans. This means 
that the left child of the root is a leaf node.(step 1)

Now we need to continue on the right child ^71jLSy0k

homeowner ^HV9uBIzO

Yes ^h2MevZXA

No ^rLOPOVTi

Defualted = no ^SPDADMDP

Marital
status ^AvxfH1si

married ^HHNEMte3

{single,
divorced} ^Gk6E0rEQ

Defualted = no ^xghichcB

Defualted = yes ^eGZBz2Dw

And we go on ^Q3QgOimX

homeowner ^TWGA1tMM

Yes ^LVnkJNeb

No ^K8RYQn84

Defualted = no ^oYAsrCyk

Marital
status ^VA5fo9pv

married ^2rlVi47C

{single,
divorced} ^sUcCEERJ

Defualted = no ^EWkUjOif

Annual
income ^4T0BgrC7

< 80k ^HxHh0eCR

Defualted = no ^6WLtOrp5

Defualted = yes ^hiZ5IoB4

>= 80k ^BeLjpv5d

Hunts algorithm will work if every comination of attribute values is present in
the training data and each combinaiton has a unique class label.
These assumptions are too stringent for most practical use-cases.

There are also 2 problems with hunt's algorithm:
    1. How should the training records be split?
    2. How should the splitting procedure stop?
        A stopping condtition is needed to terminate the 
        tree growing process. A possible strategy is to keep
        splitting untill all nodes have a valid class label. ^2rQwVrQa

Splitting

We can split attributes on their types

Nominal attributes:
    -> We have the multi way split
    -> We can also do a binary split

Ordinal attributes.
    -> multi-way split
    -> binary split
    -> note: Ordinal values can be grouped
       as long as the grouping does not
       violate the order property of 
       the attribute values


Continuous attributes
    -> Discretization: to form an ordinal categorical attribute
    -> Binary decision: A < v or A <= v  etc ^wo8zqrso

single ^JebUiLlQ

married ^iegAklZF

dirvorced ^poUzcKqr

married? ^9eEUGg7y

Married ^Bzz4KaJV

Single, divorced ^TbUr2fyM

married ^O35HqSgE

Discretization ^Euncpjps

Binary decision ^CgV9F8Ji

Measures for selecting the best split

Gini index ^DSYbDs9o


# Embedded files
dac3979e485fec84c92449d6a03001823029ecbe: [[Pasted Image 20231023104356_182.png]]
7d9791755aca9df79376f91f336b6ce4462db8b3: [[Pasted Image 20231023110213_345.png]]
afbd57541b2f49d3cc123156e4812b807c19b5fb: [[Pasted Image 20231023112218_671.png]]
cec05b9b37599cc16e03818eb55237366b979acb: [[Pasted Image 20231023123148_970.png]]
7e458bc3dd40e1b01347c01d8eb4402de395f173: [[Pasted Image 20231023125901_067.png]]
0740cc065462128f113e3db8654ff2d3cdba170d: [[Pasted Image 20231023130620_118.png]]
5e61fa7a5df830262b1dab6673ca73dd70f30b5a: [[Pasted Image 20231023143814_001.png]]
6fdf91abb7a80680b3dd73fc49c2571107eef0de: [[Pasted Image 20231023144047_034.png]]
69620052757fee73f215796302d9c1fd98832315: [[Pasted Image 20231023144641_111.png]]
34ab65bc562632b6da6ec9cf2daafa558a218571: [[Pasted Image 20231023150844_314.png]]
1284b3558ece4e319d179ac6b3b22ef7ab41a5eb: [[Pasted Image 20231023153154_762.png]]
0fb2ebcb7d4433acceb73af24115db8cfd246ba9: [[Pasted Image 20231023153228_781.png]]

%%
# Drawing
```json
{
	"type": "excalidraw",
	"version": 2,
	"source": "https://github.com/zsviczian/obsidian-excalidraw-plugin/releases/tag/1.9.12",
	"elements": [
		{
			"type": "text",
			"version": 52,
			"versionNonce": 2027245717,
			"isDeleted": false,
			"id": "xAeMnaSc",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -222.34587860107422,
			"y": -315.2331332221461,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 103.69989013671875,
			"height": 25,
			"seed": 1050268678,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "_2-H990SoN6TfKo2gtUkM",
					"type": "arrow"
				},
				{
					"id": "6c4riHwRUC_BlTEqX2NIu",
					"type": "arrow"
				},
				{
					"id": "aq5cBn1TdaL36tM_OO0dV",
					"type": "arrow"
				},
				{
					"id": "Rqk-DCU3Tkfr44wM8Bt7R",
					"type": "arrow"
				}
			],
			"updated": 1698072187854,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Datamining",
			"rawText": "Datamining",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Datamining",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "arrow",
			"version": 167,
			"versionNonce": 643133243,
			"isDeleted": false,
			"id": "Tla4O_9lNMKqGSkzqrYOi",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -188.34587860107422,
			"y": -351.7331332221461,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 71.5,
			"height": 243,
			"seed": 504922266,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": {
				"elementId": "Rplb7Dgy",
				"focus": 0.5907158358110192,
				"gap": 15
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					71.5,
					-243
				]
			]
		},
		{
			"type": "text",
			"version": 180,
			"versionNonce": 661157365,
			"isDeleted": false,
			"id": "Rplb7Dgy",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -197.84587860107422,
			"y": -659.7331332221461,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 474.5594482421875,
			"height": 50,
			"seed": 705134170,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "Tla4O_9lNMKqGSkzqrYOi",
					"type": "arrow"
				}
			],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Data driving discovery of models and \npatterns from massive observational data sets",
			"rawText": "Data driving discovery of models and \npatterns from massive observational data sets",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Data driving discovery of models and \npatterns from massive observational data sets",
			"lineHeight": 1.25,
			"baseline": 43
		},
		{
			"type": "arrow",
			"version": 153,
			"versionNonce": 972672987,
			"isDeleted": false,
			"id": "_2-H990SoN6TfKo2gtUkM",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -191.3458786010742,
			"y": -288.2331332221461,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 299.5,
			"height": 347.5,
			"seed": 1191601094,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "xAeMnaSc",
				"focus": 0.13338197204249913,
				"gap": 2
			},
			"endBinding": {
				"elementId": "mBLck91f",
				"focus": -0.33581518347798034,
				"gap": 13.5
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-299.5,
					347.5
				]
			]
		},
		{
			"type": "text",
			"version": 186,
			"versionNonce": 1462759253,
			"isDeleted": false,
			"id": "mBLck91f",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -646.3458786010742,
			"y": 72.76686677785392,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 282.379638671875,
			"height": 175,
			"seed": 659454746,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "_2-H990SoN6TfKo2gtUkM",
					"type": "arrow"
				},
				{
					"id": "ZULRPLdTrjJs1lxGoPeUN",
					"type": "arrow"
				},
				{
					"id": "ai9S7PxlwDyXNzgbW379L",
					"type": "arrow"
				}
			],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "The types of datamining\ntasks:\n1. Classification\n2. clustering\n3. association rule discovery\n4. Regression\n5. Devation detection",
			"rawText": "The types of datamining\ntasks:\n1. Classification\n2. clustering\n3. association rule discovery\n4. Regression\n5. Devation detection",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "The types of datamining\ntasks:\n1. Classification\n2. clustering\n3. association rule discovery\n4. Regression\n5. Devation detection",
			"lineHeight": 1.25,
			"baseline": 168
		},
		{
			"type": "arrow",
			"version": 101,
			"versionNonce": 1737038971,
			"isDeleted": false,
			"id": "tJ1qo7cuX7dVRTydbpaI-",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -680.3458786010742,
			"y": 136.76686677785392,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 222,
			"height": 1.5,
			"seed": 1948159194,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-222,
					1.5
				]
			]
		},
		{
			"type": "text",
			"version": 416,
			"versionNonce": 109132981,
			"isDeleted": false,
			"id": "f5lPJB12",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1170.3458786010742,
			"y": 125.26686677785392,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 454.73944091796875,
			"height": 325,
			"seed": 1203413318,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Given a collection of \nrevords[training set]\n->\nfind a model for class attribute\nas a function of the values of other\nattributes.\n\nGoal: previously unseen records should be \nassigned a class as accurately as possible\n\nExample: Reduce the coast of mailing by\ntargeting a set of consumeres likely to buy a\nnew cell-phone product.",
			"rawText": "Given a collection of \nrevords[training set]\n->\nfind a model for class attribute\nas a function of the values of other\nattributes.\n\nGoal: previously unseen records should be \nassigned a class as accurately as possible\n\nExample: Reduce the coast of mailing by\ntargeting a set of consumeres likely to buy a\nnew cell-phone product.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Given a collection of \nrevords[training set]\n->\nfind a model for class attribute\nas a function of the values of other\nattributes.\n\nGoal: previously unseen records should be \nassigned a class as accurately as possible\n\nExample: Reduce the coast of mailing by\ntargeting a set of consumeres likely to buy a\nnew cell-phone product.",
			"lineHeight": 1.25,
			"baseline": 318
		},
		{
			"type": "arrow",
			"version": 179,
			"versionNonce": 180737307,
			"isDeleted": false,
			"id": "ZULRPLdTrjJs1lxGoPeUN",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -650.8458786010742,
			"y": 160.26686677785392,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 72,
			"height": 418,
			"seed": 445055174,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "mBLck91f",
				"focus": 0.9323456880401924,
				"gap": 4.5
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-72,
					418
				]
			]
		},
		{
			"type": "text",
			"version": 860,
			"versionNonce": 1291968021,
			"isDeleted": false,
			"id": "dPAfF3ah",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -841.4519392071348,
			"y": 623.4032304142175,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 611.3793334960938,
			"height": 450,
			"seed": 182819546,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Clustering:\nGiven a set of data points\neach having the same set of \nattributes and a similarity measure among them,\nfind clusters such that:\n    - Data points in one cluster are more similar to \n      one another\n    - Data points in seperate clusters are less\n      similar to one another\n\nDifferent ways to measure similarity:\n1. Euclidean distance if attributes are continuos.\n2. Other problem specific measures.\n\nExample market segmentation.\nGoal. Subdivide a market into distinct subsets of customers \nwhere any subset may conceivably be selected as a market \ntarget to be reached with a distinct marketing mix",
			"rawText": "Clustering:\nGiven a set of data points\neach having the same set of \nattributes and a similarity measure among them,\nfind clusters such that:\n    - Data points in one cluster are more similar to \n      one another\n    - Data points in seperate clusters are less\n      similar to one another\n\nDifferent ways to measure similarity:\n1. Euclidean distance if attributes are continuos.\n2. Other problem specific measures.\n\nExample market segmentation.\nGoal. Subdivide a market into distinct subsets of customers \nwhere any subset may conceivably be selected as a market \ntarget to be reached with a distinct marketing mix",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Clustering:\nGiven a set of data points\neach having the same set of \nattributes and a similarity measure among them,\nfind clusters such that:\n    - Data points in one cluster are more similar to \n      one another\n    - Data points in seperate clusters are less\n      similar to one another\n\nDifferent ways to measure similarity:\n1. Euclidean distance if attributes are continuos.\n2. Other problem specific measures.\n\nExample market segmentation.\nGoal. Subdivide a market into distinct subsets of customers \nwhere any subset may conceivably be selected as a market \ntarget to be reached with a distinct marketing mix",
			"lineHeight": 1.25,
			"baseline": 443
		},
		{
			"type": "image",
			"version": 472,
			"versionNonce": 1663203771,
			"isDeleted": false,
			"id": "-1yv89313QySty_CZNVzA",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1030.6238958424535,
			"y": 755.5168667778539,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 188.05603448275866,
			"height": 95.25982532751094,
			"seed": 1682478682,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "dac3979e485fec84c92449d6a03001823029ecbe",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "arrow",
			"version": 112,
			"versionNonce": 833049461,
			"isDeleted": false,
			"id": "yAFaivfT3megt7pCgVyAA",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -364.0807270859223,
			"y": 186.5613743536116,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 194.54545454545456,
			"height": 118.1818181818182,
			"seed": 1559342426,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					194.54545454545456,
					-118.1818181818182
				]
			]
		},
		{
			"type": "text",
			"version": 643,
			"versionNonce": 499223131,
			"isDeleted": false,
			"id": "ZnKU4Ei4",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -101.05042405561909,
			"y": 22.925010717247886,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 586.559326171875,
			"height": 300,
			"seed": 936766726,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Assocation rule discovery\n\nGiven a set of records each of which contain\nsome number of items from a given collection: Produce\ndependency rules which will predict occurrences of an item\nbased on occurrences of other items.\n\nExample Supermarket shelf management.\nGoal is to identify items that are bought together by\nsufficiently many customers. We do this by processing the\npoint of sale data collected with barcode scanners to find\ndependencies among items.",
			"rawText": "Assocation rule discovery\n\nGiven a set of records each of which contain\nsome number of items from a given collection: Produce\ndependency rules which will predict occurrences of an item\nbased on occurrences of other items.\n\nExample Supermarket shelf management.\nGoal is to identify items that are bought together by\nsufficiently many customers. We do this by processing the\npoint of sale data collected with barcode scanners to find\ndependencies among items.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Assocation rule discovery\n\nGiven a set of records each of which contain\nsome number of items from a given collection: Produce\ndependency rules which will predict occurrences of an item\nbased on occurrences of other items.\n\nExample Supermarket shelf management.\nGoal is to identify items that are bought together by\nsufficiently many customers. We do this by processing the\npoint of sale data collected with barcode scanners to find\ndependencies among items.",
			"lineHeight": 1.25,
			"baseline": 293
		},
		{
			"type": "arrow",
			"version": 477,
			"versionNonce": 1085742293,
			"isDeleted": false,
			"id": "d2yWPu43f8vVlxLweK02C",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -508.29431227042596,
			"y": 208.68298634904056,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 411.77715377222114,
			"height": 201.41197971086933,
			"seed": 1615708186,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": {
				"elementId": "aXMpdziv",
				"focus": -0.3122488298053271,
				"gap": 29.399687460823884
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					201.60913764367407,
					27.50992893611875
				],
				[
					411.77715377222114,
					201.41197971086933
				]
			]
		},
		{
			"type": "text",
			"version": 525,
			"versionNonce": 527795963,
			"isDeleted": false,
			"id": "aXMpdziv",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -67.11747103738094,
			"y": 391.9375129740423,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 600.1193237304688,
			"height": 325,
			"seed": 343437318,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "d2yWPu43f8vVlxLweK02C",
					"type": "arrow"
				}
			],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Regression\n\nPredict a value of a continuos valued variable based\non values of other variables assuming a linear or non-linear\nmodel of dependency.\n\nExample:\n    - predicting sales amounts of new product based\n      on advertising expenditure.\n    - predicting wind velocities as a function of temperature\n      humidity, air pressure, etc.\n    - Stock market stuff.\n",
			"rawText": "Regression\n\nPredict a value of a continuos valued variable based\non values of other variables assuming a linear or non-linear\nmodel of dependency.\n\nExample:\n    - predicting sales amounts of new product based\n      on advertising expenditure.\n    - predicting wind velocities as a function of temperature\n      humidity, air pressure, etc.\n    - Stock market stuff.\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Regression\n\nPredict a value of a continuos valued variable based\non values of other variables assuming a linear or non-linear\nmodel of dependency.\n\nExample:\n    - predicting sales amounts of new product based\n      on advertising expenditure.\n    - predicting wind velocities as a function of temperature\n      humidity, air pressure, etc.\n    - Stock market stuff.\n",
			"lineHeight": 1.25,
			"baseline": 318
		},
		{
			"type": "arrow",
			"version": 84,
			"versionNonce": 1640413749,
			"isDeleted": false,
			"id": "ai9S7PxlwDyXNzgbW379L",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -564.5430830327831,
			"y": 264.0910484434659,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 80.82247757680113,
			"height": 76.41397879988477,
			"seed": 857703494,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "mBLck91f",
				"focus": 0.7238922946423473,
				"gap": 16.324181665612002
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					80.82247757680113,
					76.41397879988477
				]
			]
		},
		{
			"type": "text",
			"version": 224,
			"versionNonce": 247525275,
			"isDeleted": false,
			"id": "HC7u8o1k",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -478.5773568829128,
			"y": 349.32202479718353,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 321.7596435546875,
			"height": 175,
			"seed": 533970758,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Deviation detection\nDetect significant deviations \nfrom normal behaviour.\n\nExample\n  - credit card fraud detection.\n  - Network intrusion detection. ",
			"rawText": "Deviation detection\nDetect significant deviations \nfrom normal behaviour.\n\nExample\n  - credit card fraud detection.\n  - Network intrusion detection. ",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Deviation detection\nDetect significant deviations \nfrom normal behaviour.\n\nExample\n  - credit card fraud detection.\n  - Network intrusion detection. ",
			"lineHeight": 1.25,
			"baseline": 168
		},
		{
			"type": "arrow",
			"version": 237,
			"versionNonce": 1841015701,
			"isDeleted": false,
			"id": "syLZTcrvPHCO5QdC6aq8-",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -98.66267166325792,
			"y": -302.57482823827587,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 480.9786932309678,
			"height": 53.35082204516169,
			"seed": 165513498,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": {
				"elementId": "VdCKcG9w",
				"focus": -0.20540180299580657,
				"gap": 28.10619191722344
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					480.9786932309678,
					-53.35082204516169
				]
			]
		},
		{
			"type": "text",
			"version": 719,
			"versionNonce": 500581435,
			"isDeleted": false,
			"id": "VdCKcG9w",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 410.4222134849333,
			"y": -592.3375938957229,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 1010.4588623046875,
			"height": 275,
			"seed": 543625286,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "syLZTcrvPHCO5QdC6aq8-",
					"type": "arrow"
				}
			],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Components of datamining algorithms\n\n1. Representation\n    - Determinging the nature and structure of the representation to be used\n2. Score function\n    - Quantifying and comparing how well different representations fit the data\n3. Search/Optimization method\n    - Choosing an algorithmic process to optimize the score function\n4. Data management:\n    - Deciding what principles od data management are required to implement the algorithms effciently\n",
			"rawText": "Components of datamining algorithms\n\n1. Representation\n    - Determinging the nature and structure of the representation to be used\n2. Score function\n    - Quantifying and comparing how well different representations fit the data\n3. Search/Optimization method\n    - Choosing an algorithmic process to optimize the score function\n4. Data management:\n    - Deciding what principles od data management are required to implement the algorithms effciently\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Components of datamining algorithms\n\n1. Representation\n    - Determinging the nature and structure of the representation to be used\n2. Score function\n    - Quantifying and comparing how well different representations fit the data\n3. Search/Optimization method\n    - Choosing an algorithmic process to optimize the score function\n4. Data management:\n    - Deciding what principles od data management are required to implement the algorithms effciently\n",
			"lineHeight": 1.25,
			"baseline": 268
		},
		{
			"type": "arrow",
			"version": 786,
			"versionNonce": 80441589,
			"isDeleted": false,
			"id": "6c4riHwRUC_BlTEqX2NIu",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -230.7145325156564,
			"y": -310.3240220364007,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 558.9553067702918,
			"height": 635.7568303045797,
			"seed": 2033946010,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "xAeMnaSc",
				"focus": -0.8520814219363465,
				"gap": 8.368653914582183
			},
			"endBinding": {
				"elementId": "R51B6hBU",
				"focus": -0.7265165944384069,
				"gap": 22.07806946790697
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-558.9553067702918,
					-635.7568303045797
				]
			]
		},
		{
			"type": "text",
			"version": 588,
			"versionNonce": 345507035,
			"isDeleted": false,
			"id": "R51B6hBU",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1192.5674888319802,
			"y": -1078.281059872392,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 380.819580078125,
			"height": 350,
			"seed": 264714886,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "6c4riHwRUC_BlTEqX2NIu",
					"type": "arrow"
				},
				{
					"id": "BIcsk1CFQ6cPRXNBXS-8r",
					"type": "arrow"
				},
				{
					"id": "EJGZMS2YjjH8BKopekbSQ",
					"type": "arrow"
				}
			],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "What is data?\nData is a collection of objects\nand their attributes.\n\nAn attributes is a property or \ncharacteristic of an object\n    - Example: Eye color of a person\nAttribute is also known as variable\nfield, characteristic, feature etc,\n\nA collection of attributes descirbe\nand object.\nAn object is also known as a record,\npoint, case, sample, entity or instance.",
			"rawText": "What is data?\nData is a collection of objects\nand their attributes.\n\nAn attributes is a property or \ncharacteristic of an object\n    - Example: Eye color of a person\nAttribute is also known as variable\nfield, characteristic, feature etc,\n\nA collection of attributes descirbe\nand object.\nAn object is also known as a record,\npoint, case, sample, entity or instance.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "What is data?\nData is a collection of objects\nand their attributes.\n\nAn attributes is a property or \ncharacteristic of an object\n    - Example: Eye color of a person\nAttribute is also known as variable\nfield, characteristic, feature etc,\n\nA collection of attributes descirbe\nand object.\nAn object is also known as a record,\npoint, case, sample, entity or instance.",
			"lineHeight": 1.25,
			"baseline": 343
		},
		{
			"type": "image",
			"version": 190,
			"versionNonce": 612076117,
			"isDeleted": false,
			"id": "y87ag79twG1MwvgTcq1Qz",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1400.0115405196973,
			"y": -1071.498241499051,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 176.72024070001743,
			"height": 210.91254796376825,
			"seed": 2103739866,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "4ZJH0EFeQN2R_6RaQeNPp",
					"type": "arrow"
				},
				{
					"id": "LNaqdzirb_suBwCbU44Md",
					"type": "arrow"
				}
			],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "7d9791755aca9df79376f91f336b6ce4462db8b3",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "arrow",
			"version": 78,
			"versionNonce": 446214523,
			"isDeleted": false,
			"id": "4ZJH0EFeQN2R_6RaQeNPp",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1410.7885692669631,
			"y": -844.2858312540964,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 170.8513524981788,
			"height": 294.5712974106532,
			"seed": 467425286,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "y87ag79twG1MwvgTcq1Qz",
				"focus": 0.19072821254438124,
				"gap": 16.29986228118628
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-170.8513524981788,
					294.5712974106532
				]
			]
		},
		{
			"type": "text",
			"version": 341,
			"versionNonce": 2107733941,
			"isDeleted": false,
			"id": "96Wp3ThB",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1710.269388301133,
			"y": -524.1850214011866,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 692.5792236328125,
			"height": 150,
			"seed": 1623747098,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "loNNdFxBlQxrOY0cFqhaf",
					"type": "arrow"
				}
			],
			"updated": 1698072187855,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Attribute values:\nattribute values are numbers or symbolls assigned \nto an attribute.\nDisticntion between attributes and attributes values:\n    - same attribute can be mapped to different values\n    - Different attributes can be mapped to the same set of values",
			"rawText": "Attribute values:\nattribute values are numbers or symbolls assigned \nto an attribute.\nDisticntion between attributes and attributes values:\n    - same attribute can be mapped to different values\n    - Different attributes can be mapped to the same set of values",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Attribute values:\nattribute values are numbers or symbolls assigned \nto an attribute.\nDisticntion between attributes and attributes values:\n    - same attribute can be mapped to different values\n    - Different attributes can be mapped to the same set of values",
			"lineHeight": 1.25,
			"baseline": 143
		},
		{
			"type": "arrow",
			"version": 1951,
			"versionNonce": 1092274715,
			"isDeleted": false,
			"id": "loNNdFxBlQxrOY0cFqhaf",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1726.9617618210702,
			"y": -386.57485240158866,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 341.087869703533,
			"height": 26.01807559872867,
			"seed": 765715398,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "96Wp3ThB",
				"focus": -0.3590144246944688,
				"gap": 16.692373519937178
			},
			"endBinding": {
				"elementId": "v94RUJ42",
				"focus": 0.29370151000284733,
				"gap": 29.44221986327136
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-341.087869703533,
					26.01807559872867
				]
			]
		},
		{
			"type": "text",
			"version": 1330,
			"versionNonce": 174242069,
			"isDeleted": false,
			"id": "v94RUJ42",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2630.031219063656,
			"y": -602.7056295774194,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 532.5393676757812,
			"height": 400,
			"seed": 529477638,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "loNNdFxBlQxrOY0cFqhaf",
					"type": "arrow"
				},
				{
					"id": "4Wv294f2Ex3aeHgErBfXD",
					"type": "arrow"
				},
				{
					"id": "5rDRo-R896feaNMwiYcWX",
					"type": "arrow"
				}
			],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Properties of Attribute values\nMathematical properties:\n    - Distinctness: =, !=\n    - Order: <, >\n    - Addition: +, -\n    - Multiplication: *, /\n\nThe type of an attribute depends\non which of these apply.\n\n    - Nominal attribute: Disctinctness\n    - Ordinal attribute: Distinctness and order\n    - Interval attribute: Distinctness, order, addition\n    - Ratio attribute: all 4 properties\n\n",
			"rawText": "Properties of Attribute values\nMathematical properties:\n    - Distinctness: =, !=\n    - Order: <, >\n    - Addition: +, -\n    - Multiplication: *, /\n\nThe type of an attribute depends\non which of these apply.\n\n    - Nominal attribute: Disctinctness\n    - Ordinal attribute: Distinctness and order\n    - Interval attribute: Distinctness, order, addition\n    - Ratio attribute: all 4 properties\n\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Properties of Attribute values\nMathematical properties:\n    - Distinctness: =, !=\n    - Order: <, >\n    - Addition: +, -\n    - Multiplication: *, /\n\nThe type of an attribute depends\non which of these apply.\n\n    - Nominal attribute: Disctinctness\n    - Ordinal attribute: Distinctness and order\n    - Interval attribute: Distinctness, order, addition\n    - Ratio attribute: all 4 properties\n\n",
			"lineHeight": 1.25,
			"baseline": 393
		},
		{
			"type": "arrow",
			"version": 1958,
			"versionNonce": 1292947131,
			"isDeleted": false,
			"id": "4Wv294f2Ex3aeHgErBfXD",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2647.705496908297,
			"y": -214.393925307599,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 251.96459976214373,
			"height": 10.165213725461115,
			"seed": 813518362,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "v94RUJ42",
				"focus": -0.8384279125151199,
				"gap": 17.674277844640983
			},
			"endBinding": {
				"elementId": "oXqxVBvK",
				"focus": -0.5315363628872742,
				"gap": 22.208878019656822
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-251.96459976214373,
					10.165213725461115
				]
			]
		},
		{
			"type": "text",
			"version": 485,
			"versionNonce": 1681182325,
			"isDeleted": false,
			"id": "oXqxVBvK",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3368.0384595533787,
			"y": -248.10701907746193,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 446.15948486328125,
			"height": 250,
			"seed": 210975238,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "4Wv294f2Ex3aeHgErBfXD",
					"type": "arrow"
				}
			],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Example of the 4 types:\n\nNominal\n    - Id numbers, eye color\nOrdinal\n    - Rankings, grades, height\nInterval\n    - Calendar dates, temperatures,\nRatio\n    - emerature in kelvin, length, time, counts",
			"rawText": "Example of the 4 types:\n\nNominal\n    - Id numbers, eye color\nOrdinal\n    - Rankings, grades, height\nInterval\n    - Calendar dates, temperatures,\nRatio\n    - emerature in kelvin, length, time, counts",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Example of the 4 types:\n\nNominal\n    - Id numbers, eye color\nOrdinal\n    - Rankings, grades, height\nInterval\n    - Calendar dates, temperatures,\nRatio\n    - emerature in kelvin, length, time, counts",
			"lineHeight": 1.25,
			"baseline": 243
		},
		{
			"type": "arrow",
			"version": 2731,
			"versionNonce": 1092435803,
			"isDeleted": false,
			"id": "5rDRo-R896feaNMwiYcWX",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2073.926147595026,
			"y": -229.9144583281545,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 216.69260914569577,
			"height": 157.17756707411579,
			"seed": 425791238,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "v94RUJ42",
				"focus": -0.09466527820843558,
				"gap": 23.565703792848353
			},
			"endBinding": {
				"elementId": "FrSxCeHq",
				"focus": 0.7478929943341217,
				"gap": 15.941830874667858
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					216.69260914569577,
					157.17756707411579
				]
			]
		},
		{
			"type": "text",
			"version": 1153,
			"versionNonce": 1507669973,
			"isDeleted": false,
			"id": "FrSxCeHq",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2532.0819266250924,
			"y": -56.79506037937085,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 861.9591674804688,
			"height": 325,
			"seed": 973464666,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "5rDRo-R896feaNMwiYcWX",
					"type": "arrow"
				}
			],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Discrete and continuous attributes:\nDiscrete attribute:\n    - Has only a finite of countable inifinite set of values\n    - Examples -> zip cordes, counts, or the set of words in a collection of documents\n    - often represented as integer variables\n    - Note: Binary attributes are a special case of discrete attributes\n\nContinuous attribute\n    - has real numbers as attribute values\n    - examples: temperature, hieght or weight\n    - Continuous attributes are typically represented as floating-point variables\n\nPractically any value can only be measured and represented in a finite way.",
			"rawText": "Discrete and continuous attributes:\nDiscrete attribute:\n    - Has only a finite of countable inifinite set of values\n    - Examples -> zip cordes, counts, or the set of words in a collection of documents\n    - often represented as integer variables\n    - Note: Binary attributes are a special case of discrete attributes\n\nContinuous attribute\n    - has real numbers as attribute values\n    - examples: temperature, hieght or weight\n    - Continuous attributes are typically represented as floating-point variables\n\nPractically any value can only be measured and represented in a finite way.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Discrete and continuous attributes:\nDiscrete attribute:\n    - Has only a finite of countable inifinite set of values\n    - Examples -> zip cordes, counts, or the set of words in a collection of documents\n    - often represented as integer variables\n    - Note: Binary attributes are a special case of discrete attributes\n\nContinuous attribute\n    - has real numbers as attribute values\n    - examples: temperature, hieght or weight\n    - Continuous attributes are typically represented as floating-point variables\n\nPractically any value can only be measured and represented in a finite way.",
			"lineHeight": 1.25,
			"baseline": 318
		},
		{
			"type": "arrow",
			"version": 190,
			"versionNonce": 663919611,
			"isDeleted": false,
			"id": "BIcsk1CFQ6cPRXNBXS-8r",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -795.1345576787124,
			"y": -1059.3228783638692,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 211.1094298109681,
			"height": 267.07797631899234,
			"seed": 1519098074,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "R51B6hBU",
				"focus": 0.2545538335064548,
				"gap": 16.61335107514276
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					211.1094298109681,
					-267.07797631899234
				]
			]
		},
		{
			"type": "text",
			"version": 326,
			"versionNonce": 1165063477,
			"isDeleted": false,
			"id": "d34JDv41",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -494.67183431984574,
			"y": -1418.699861204866,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 291.11962890625,
			"height": 400,
			"seed": 1327912198,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Types of datasets\n\n1. record\n    - Data matrix\n    - Document data\n    - Transaction data\n\n2. Graph\n    - World wide web\n    - Molecular structures\n\n3. Ordered\n    - Spatial data\n    - Temporal data\n    - Sequential data\n    - Genetic sequence data.",
			"rawText": "Types of datasets\n\n1. record\n    - Data matrix\n    - Document data\n    - Transaction data\n\n2. Graph\n    - World wide web\n    - Molecular structures\n\n3. Ordered\n    - Spatial data\n    - Temporal data\n    - Sequential data\n    - Genetic sequence data.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Types of datasets\n\n1. record\n    - Data matrix\n    - Document data\n    - Transaction data\n\n2. Graph\n    - World wide web\n    - Molecular structures\n\n3. Ordered\n    - Spatial data\n    - Temporal data\n    - Sequential data\n    - Genetic sequence data.",
			"lineHeight": 1.25,
			"baseline": 393
		},
		{
			"type": "arrow",
			"version": 346,
			"versionNonce": 477324443,
			"isDeleted": false,
			"id": "f-SNzd0TcvyzSEbI7bvMl",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -305.1642996523254,
			"y": -1347.020845501604,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 277.8789238907162,
			"height": 269.04178496839677,
			"seed": 2133611866,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": {
				"elementId": "lZ5JTsit",
				"focus": 0.8964973241851529,
				"gap": 15.71046919523485
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					277.8789238907162,
					-269.04178496839677
				]
			]
		},
		{
			"type": "text",
			"version": 259,
			"versionNonce": 576128661,
			"isDeleted": false,
			"id": "lZ5JTsit",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -11.574906566374352,
			"y": -1658.2845164321946,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 461.6195068359375,
			"height": 75,
			"seed": 133897242,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "f-SNzd0TcvyzSEbI7bvMl",
					"type": "arrow"
				}
			],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Data that consists of a collection of\nrecords, each of which consists of a fixed set\nof attributes.",
			"rawText": "Data that consists of a collection of\nrecords, each of which consists of a fixed set\nof attributes.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Data that consists of a collection of\nrecords, each of which consists of a fixed set\nof attributes.",
			"lineHeight": 1.25,
			"baseline": 68
		},
		{
			"type": "arrow",
			"version": 163,
			"versionNonce": 393353531,
			"isDeleted": false,
			"id": "PcaNfDgmwC9G-Nv0xglk1",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -285.52621315828287,
			"y": -1304.798959539408,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 285.7341584883336,
			"height": 198.34467358983989,
			"seed": 872164742,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					285.7341584883336,
					-198.34467358983989
				]
			]
		},
		{
			"type": "text",
			"version": 190,
			"versionNonce": 1665362933,
			"isDeleted": false,
			"id": "Bll6Qv61",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 37.520309668733375,
			"y": -1518.8541023244827,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 578.4793701171875,
			"height": 75,
			"seed": 1144249370,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Each document becomes a term vectory\n    - The value of each component is the number of times\n      the corresponding term occors in the document",
			"rawText": "Each document becomes a term vectory\n    - The value of each component is the number of times\n      the corresponding term occors in the document",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Each document becomes a term vectory\n    - The value of each component is the number of times\n      the corresponding term occors in the document",
			"lineHeight": 1.25,
			"baseline": 68
		},
		{
			"type": "arrow",
			"version": 98,
			"versionNonce": 1978743259,
			"isDeleted": false,
			"id": "mFbPxXq8ONiIEVvrjG-1i",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -260.9786050407283,
			"y": -1280.251351421854,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 308.3179579564837,
			"height": 103.09995409372868,
			"seed": 547291674,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					308.3179579564837,
					-103.09995409372868
				]
			]
		},
		{
			"type": "text",
			"version": 356,
			"versionNonce": 138159445,
			"isDeleted": false,
			"id": "shHIDvM4",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 71.88696103330983,
			"y": -1391.2065401132,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 934.879150390625,
			"height": 100,
			"seed": 521361498,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Transaction data is a special type of record data where each record invoves a set of items\n    - for example, the set of products purchased by a customer during one\n      shopping trip constitures a transaction, while the individual products are the items.\n",
			"rawText": "Transaction data is a special type of record data where each record invoves a set of items\n    - for example, the set of products purchased by a customer during one\n      shopping trip constitures a transaction, while the individual products are the items.\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Transaction data is a special type of record data where each record invoves a set of items\n    - for example, the set of products purchased by a customer during one\n      shopping trip constitures a transaction, while the individual products are the items.\n",
			"lineHeight": 1.25,
			"baseline": 93
		},
		{
			"type": "arrow",
			"version": 209,
			"versionNonce": 1157842555,
			"isDeleted": false,
			"id": "EJGZMS2YjjH8BKopekbSQ",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -837.3564436409056,
			"y": -1095.6533383778467,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 33.384747039874014,
			"height": 602.8892553671369,
			"seed": 1532218886,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "R51B6hBU",
				"focus": 0.7703570900551844,
				"gap": 17.372278505454688
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					33.384747039874014,
					-602.8892553671369
				]
			]
		},
		{
			"type": "text",
			"version": 309,
			"versionNonce": 1956033205,
			"isDeleted": false,
			"id": "IgTQd2Lv",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -771.5688538858599,
			"y": -1897.8691716595267,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 592.83935546875,
			"height": 150,
			"seed": 229423366,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "B7bzXBHBywfgR4tCY2niZ",
					"type": "arrow"
				}
			],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Data quality\nData is high quality if\n    - Are fit for their intended use\n    - Correctly represent the phenomena they correspond to\n\nThere are many problems with data",
			"rawText": "Data quality\nData is high quality if\n    - Are fit for their intended use\n    - Correctly represent the phenomena they correspond to\n\nThere are many problems with data",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Data quality\nData is high quality if\n    - Are fit for their intended use\n    - Correctly represent the phenomena they correspond to\n\nThere are many problems with data",
			"lineHeight": 1.25,
			"baseline": 143
		},
		{
			"type": "arrow",
			"version": 435,
			"versionNonce": 1265286939,
			"isDeleted": false,
			"id": "B7bzXBHBywfgR4tCY2niZ",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -779.4240884834765,
			"y": -1758.0934936284757,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 611.7263942894565,
			"height": 145.71268045311444,
			"seed": 1705275802,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "IgTQd2Lv",
				"focus": -0.9426317573327451,
				"gap": 7.8552345976165725
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-611.7263942894565,
					-145.71268045311444
				]
			]
		},
		{
			"type": "text",
			"version": 974,
			"versionNonce": 83399701,
			"isDeleted": false,
			"id": "SGLJaIYb",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1888.975975396936,
			"y": -2178.6938085243496,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 806.0592041015625,
			"height": 600,
			"seed": 1212761818,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Noise\nNoise refers to modification of original values\nexample -> Distortion of a person's voice when talking on a poor phone connection\n\nOutliers\nThese are data objects with\ncharacteritics that are consideably\ndifferent from most of the other data\nobjects in the data set\n\n\nMissing values\nreasons:\n     - information is not collected\n    - Attributes may not be applicable\n\nhandling missing values\n    - Eliminatte data objects\n    - Estimate missing values\n    - Ignore missing value during analysis\n    - replace with all possible values.\n\nDuplicate data\nExample -> same person with multiple email addresses.",
			"rawText": "Noise\nNoise refers to modification of original values\nexample -> Distortion of a person's voice when talking on a poor phone connection\n\nOutliers\nThese are data objects with\ncharacteritics that are consideably\ndifferent from most of the other data\nobjects in the data set\n\n\nMissing values\nreasons:\n     - information is not collected\n    - Attributes may not be applicable\n\nhandling missing values\n    - Eliminatte data objects\n    - Estimate missing values\n    - Ignore missing value during analysis\n    - replace with all possible values.\n\nDuplicate data\nExample -> same person with multiple email addresses.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Noise\nNoise refers to modification of original values\nexample -> Distortion of a person's voice when talking on a poor phone connection\n\nOutliers\nThese are data objects with\ncharacteritics that are consideably\ndifferent from most of the other data\nobjects in the data set\n\n\nMissing values\nreasons:\n     - information is not collected\n    - Attributes may not be applicable\n\nhandling missing values\n    - Eliminatte data objects\n    - Estimate missing values\n    - Ignore missing value during analysis\n    - replace with all possible values.\n\nDuplicate data\nExample -> same person with multiple email addresses.",
			"lineHeight": 1.25,
			"baseline": 593
		},
		{
			"type": "image",
			"version": 398,
			"versionNonce": 1402610619,
			"isDeleted": false,
			"id": "P1PjZBjU_-wJryTmCq4RZ",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2026.0455612892267,
			"y": -2085.8939462431645,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 115.07067118282882,
			"height": 90.1005436205513,
			"seed": 1369808518,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "afbd57541b2f49d3cc123156e4812b807c19b5fb",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "arrow",
			"version": 320,
			"versionNonce": 1700219253,
			"isDeleted": false,
			"id": "DHH5Knl_rHBFa60BnC8mN",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -123.89726452036444,
			"y": -311.22376253232574,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 1391.7363546429465,
			"height": 788.4038391993292,
			"seed": 2122586266,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					1391.7363546429465,
					-788.4038391993292
				]
			]
		},
		{
			"type": "text",
			"version": 158,
			"versionNonce": 900985947,
			"isDeleted": false,
			"id": "ksqRhSov",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1307.3209725238,
			"y": -1120.6023517573012,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 188.95977783203125,
			"height": 25,
			"seed": 2055936666,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "KYIR0GD1MI6m5W6mscrh_",
					"type": "arrow"
				},
				{
					"id": "YUKEmsIcf5jEWgS90jw_e",
					"type": "arrow"
				},
				{
					"id": "kvEwFnVGGWjqRsNRDfufU",
					"type": "arrow"
				},
				{
					"id": "xdZL_tOGLWDMCFCFf7n3y",
					"type": "arrow"
				},
				{
					"id": "shBE0JOVFjzUiatbhFo2u",
					"type": "arrow"
				},
				{
					"id": "eoD-RnSRAFsd1hFzJNKB9",
					"type": "arrow"
				}
			],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Data preprocessing",
			"rawText": "Data preprocessing",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Data preprocessing",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "arrow",
			"version": 240,
			"versionNonce": 653808341,
			"isDeleted": false,
			"id": "KYIR0GD1MI6m5W6mscrh_",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1457.8456491784445,
			"y": -1125.5375870574521,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 83.89900010258907,
			"height": 465.1459270393534,
			"seed": 992889350,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "ksqRhSov",
				"focus": 0.546857159587195,
				"gap": 4.935235300150907
			},
			"endBinding": {
				"elementId": "84Z75Pqp",
				"focus": 0.9799836740070146,
				"gap": 13.571897075418747
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					83.89900010258907,
					-465.1459270393534
				]
			]
		},
		{
			"type": "text",
			"version": 274,
			"versionNonce": 562737403,
			"isDeleted": false,
			"id": "84Z75Pqp",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1555.3165463564524,
			"y": -1709.1291613004607,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 751.5391845703125,
			"height": 150,
			"seed": 505465542,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "KYIR0GD1MI6m5W6mscrh_",
					"type": "arrow"
				}
			],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Aggregation\nCombining multiple attributes into a single attribute\npurpose:\n    - Data reduction\n    - change of scale\n    - More stable data -> aggregated data tendst o have less variablility",
			"rawText": "Aggregation\nCombining multiple attributes into a single attribute\npurpose:\n    - Data reduction\n    - change of scale\n    - More stable data -> aggregated data tendst o have less variablility",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Aggregation\nCombining multiple attributes into a single attribute\npurpose:\n    - Data reduction\n    - change of scale\n    - More stable data -> aggregated data tendst o have less variablility",
			"lineHeight": 1.25,
			"baseline": 143
		},
		{
			"type": "arrow",
			"version": 112,
			"versionNonce": 376516661,
			"isDeleted": false,
			"id": "YUKEmsIcf5jEWgS90jw_e",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1498.5613404047006,
			"y": -1123.0699694073767,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 181.36989728059666,
			"height": 338.0636180604322,
			"seed": 2134444294,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "ksqRhSov",
				"focus": 0.8769031774234847,
				"gap": 2.4676176500754536
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					181.36989728059666,
					-338.0636180604322
				]
			]
		},
		{
			"type": "text",
			"version": 734,
			"versionNonce": 681630107,
			"isDeleted": false,
			"id": "7SvPCOf9",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1718.1793112614776,
			"y": -1493.2126169187986,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 745.9390869140625,
			"height": 325,
			"seed": 1816983194,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "V2Wq2o2b1c0DnCf19nvy8",
					"type": "arrow"
				}
			],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Sampling\nSampling is the main technique employed for data selection\n\nstatisticians use sampling because obtaining all data of interest\nis too expensive or time consuming.\n\nSampling is used in datamining because precessing all data of interests\nis to expensive or time consuming.\nKey principle of effective sampling\n    - Using a sample will work almost as well as using the entire\n      data set if the sample is representative.\n    - A sample is representative if it has approximately the same property\n      as the original data",
			"rawText": "Sampling\nSampling is the main technique employed for data selection\n\nstatisticians use sampling because obtaining all data of interest\nis too expensive or time consuming.\n\nSampling is used in datamining because precessing all data of interests\nis to expensive or time consuming.\nKey principle of effective sampling\n    - Using a sample will work almost as well as using the entire\n      data set if the sample is representative.\n    - A sample is representative if it has approximately the same property\n      as the original data",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Sampling\nSampling is the main technique employed for data selection\n\nstatisticians use sampling because obtaining all data of interest\nis too expensive or time consuming.\n\nSampling is used in datamining because precessing all data of interests\nis to expensive or time consuming.\nKey principle of effective sampling\n    - Using a sample will work almost as well as using the entire\n      data set if the sample is representative.\n    - A sample is representative if it has approximately the same property\n      as the original data",
			"lineHeight": 1.25,
			"baseline": 318
		},
		{
			"type": "arrow",
			"version": 188,
			"versionNonce": 1369923989,
			"isDeleted": false,
			"id": "V2Wq2o2b1c0DnCf19nvy8",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2481.9069739600436,
			"y": -1443.860263917275,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 224.55320615692926,
			"height": 83.89900010258907,
			"seed": 2110942938,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "7SvPCOf9",
				"focus": 0.10882807736832976,
				"gap": 17.788575784503223
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					224.55320615692926,
					-83.89900010258907
				]
			]
		},
		{
			"type": "text",
			"version": 556,
			"versionNonce": 136900155,
			"isDeleted": false,
			"id": "SHm7dKVN",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2732.3701654427723,
			"y": -1559.838293470854,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 908.1389770507812,
			"height": 250,
			"seed": 1943702598,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Types of sampling\n1. simple random sampling\n2. Sampling without replacement\n    - as each item is selected it is removed from the population\n3. Sampling with replacement\n    - Objexts are not removed from the population as they are selected for the sample\n    - The same object can be picked up more than once\n4. Stratified sampling\n    - Split the data into sevaral partitions; then draw random sapmles from each partition\n",
			"rawText": "Types of sampling\n1. simple random sampling\n2. Sampling without replacement\n    - as each item is selected it is removed from the population\n3. Sampling with replacement\n    - Objexts are not removed from the population as they are selected for the sample\n    - The same object can be picked up more than once\n4. Stratified sampling\n    - Split the data into sevaral partitions; then draw random sapmles from each partition\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Types of sampling\n1. simple random sampling\n2. Sampling without replacement\n    - as each item is selected it is removed from the population\n3. Sampling with replacement\n    - Objexts are not removed from the population as they are selected for the sample\n    - The same object can be picked up more than once\n4. Stratified sampling\n    - Split the data into sevaral partitions; then draw random sapmles from each partition\n",
			"lineHeight": 1.25,
			"baseline": 243
		},
		{
			"type": "arrow",
			"version": 126,
			"versionNonce": 500197109,
			"isDeleted": false,
			"id": "kvEwFnVGGWjqRsNRDfufU",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1501.0289580547749,
			"y": -1089.7571311313488,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 243.0603385325005,
			"height": 24.676176500761585,
			"seed": 563080582,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "ksqRhSov",
				"focus": 0.37440485347787933,
				"gap": 5.845220625952379
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					243.0603385325005,
					24.676176500761585
				]
			]
		},
		{
			"type": "text",
			"version": 731,
			"versionNonce": 855994075,
			"isDeleted": false,
			"id": "pEiB7ZHy",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1765.0640466129225,
			"y": -1071.2499987557776,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 765.8790893554688,
			"height": 325,
			"seed": 786107226,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "_SR2makWGyguzyB-_uWfp",
					"type": "arrow"
				}
			],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Dimensionality reduction\nProblem -> when dimensionality increases, data becomes increasingly sparse\nin the space it occupies. This means that definitions of density and distance\n(important for clustering and outlier detection) may become less meaningful\n\nPurpose\n    - Avoid curse of dimensionality\n    - reduce amount of time and memory required by datamining algorithms\n    - Allow data to be mroe easily visualized\n    - may help to elimininate irrelavant features or reduce noise.\nTechniques:\n    - Principle component analysis\n    - Singular value decomposition",
			"rawText": "Dimensionality reduction\nProblem -> when dimensionality increases, data becomes increasingly sparse\nin the space it occupies. This means that definitions of density and distance\n(important for clustering and outlier detection) may become less meaningful\n\nPurpose\n    - Avoid curse of dimensionality\n    - reduce amount of time and memory required by datamining algorithms\n    - Allow data to be mroe easily visualized\n    - may help to elimininate irrelavant features or reduce noise.\nTechniques:\n    - Principle component analysis\n    - Singular value decomposition",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Dimensionality reduction\nProblem -> when dimensionality increases, data becomes increasingly sparse\nin the space it occupies. This means that definitions of density and distance\n(important for clustering and outlier detection) may become less meaningful\n\nPurpose\n    - Avoid curse of dimensionality\n    - reduce amount of time and memory required by datamining algorithms\n    - Allow data to be mroe easily visualized\n    - may help to elimininate irrelavant features or reduce noise.\nTechniques:\n    - Principle component analysis\n    - Singular value decomposition",
			"lineHeight": 1.25,
			"baseline": 318
		},
		{
			"type": "arrow",
			"version": 1043,
			"versionNonce": 2104606805,
			"isDeleted": false,
			"id": "xdZL_tOGLWDMCFCFf7n3y",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1336.0966154736002,
			"y": -1090.990939956386,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 38.727950454441725,
			"height": 213.44892673158665,
			"seed": 859236166,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "ksqRhSov",
				"focus": 0.6470381774236321,
				"gap": 4.611411800915221
			},
			"endBinding": {
				"elementId": "urQw10aH",
				"focus": 0.04433875268611825,
				"gap": 12.338088250380792
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-38.727950454441725,
					213.44892673158665
				]
			]
		},
		{
			"type": "text",
			"version": 504,
			"versionNonce": 466148219,
			"isDeleted": false,
			"id": "urQw10aH",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 887.8259720108532,
			"y": -865.2039249744186,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 739.1991577148438,
			"height": 225,
			"seed": 1929845274,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "xdZL_tOGLWDMCFCFf7n3y",
					"type": "arrow"
				}
			],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Feature subset selection\ntechniques:\n    - Brute force approach\n    - Embedded approaches -> feature selection occurs \n      naturally as part of the dataming algorithm\n    - Filter approaches: features are selected before data mining algorith\n      is run\n    - Wrapper approaches -> use the datamining algorithms as a black\n      box to find best subset of attributes.",
			"rawText": "Feature subset selection\ntechniques:\n    - Brute force approach\n    - Embedded approaches -> feature selection occurs \n      naturally as part of the dataming algorithm\n    - Filter approaches: features are selected before data mining algorith\n      is run\n    - Wrapper approaches -> use the datamining algorithms as a black\n      box to find best subset of attributes.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Feature subset selection\ntechniques:\n    - Brute force approach\n    - Embedded approaches -> feature selection occurs \n      naturally as part of the dataming algorithm\n    - Filter approaches: features are selected before data mining algorith\n      is run\n    - Wrapper approaches -> use the datamining algorithms as a black\n      box to find best subset of attributes.",
			"lineHeight": 1.25,
			"baseline": 218
		},
		{
			"type": "arrow",
			"version": 197,
			"versionNonce": 107015605,
			"isDeleted": false,
			"id": "shBE0JOVFjzUiatbhFo2u",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1356.6733255253212,
			"y": -1129.2390135325638,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 130.78373545403588,
			"height": 447.8726034888207,
			"seed": 2085450822,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "ksqRhSov",
				"focus": -0.39697734824206954,
				"gap": 8.63666177526261
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-130.78373545403588,
					-447.8726034888207
				]
			]
		},
		{
			"type": "text",
			"version": 319,
			"versionNonce": 1052095515,
			"isDeleted": false,
			"id": "mV2olxCr",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 987.7644868389368,
			"y": -1832.5100438042655,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 488.53936767578125,
			"height": 150,
			"seed": 1771381510,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Feature creation\ncreate new attributes that can capture\nthe important information in a data set\nmuch mroe efficiently than the original attributes\ncombining features\n    - BMI -> instead of length - weight",
			"rawText": "Feature creation\ncreate new attributes that can capture\nthe important information in a data set\nmuch mroe efficiently than the original attributes\ncombining features\n    - BMI -> instead of length - weight",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Feature creation\ncreate new attributes that can capture\nthe important information in a data set\nmuch mroe efficiently than the original attributes\ncombining features\n    - BMI -> instead of length - weight",
			"lineHeight": 1.25,
			"baseline": 143
		},
		{
			"type": "arrow",
			"version": 209,
			"versionNonce": 2009296661,
			"isDeleted": false,
			"id": "eoD-RnSRAFsd1hFzJNKB9",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1394.9213991015013,
			"y": -1129.239013532564,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 164.09657373006394,
			"height": 851.3280892762707,
			"seed": 1630170138,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187856,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "ksqRhSov",
				"focus": -0.11305303513238893,
				"gap": 8.636661775262837
			},
			"endBinding": {
				"elementId": "7Pap96uv",
				"focus": 0.4710704828832689,
				"gap": 12.538941405785181
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					164.09657373006394,
					-851.3280892762707
				]
			]
		},
		{
			"type": "text",
			"version": 394,
			"versionNonce": 1807644859,
			"isDeleted": false,
			"id": "7Pap96uv",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1399.8566344016524,
			"y": -2168.10604421462,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 704.7791748046875,
			"height": 175,
			"seed": 167304666,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "eoD-RnSRAFsd1hFzJNKB9",
					"type": "arrow"
				}
			],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Attribute transformation\nFunction that maps a set of attribute values\nto a new set of attribute values such that each old value\ncan be identified with one of the new values\nFor many data mining algorithms continuous features may be preferable\nbe more or less normally distributed.\n",
			"rawText": "Attribute transformation\nFunction that maps a set of attribute values\nto a new set of attribute values such that each old value\ncan be identified with one of the new values\nFor many data mining algorithms continuous features may be preferable\nbe more or less normally distributed.\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Attribute transformation\nFunction that maps a set of attribute values\nto a new set of attribute values such that each old value\ncan be identified with one of the new values\nFor many data mining algorithms continuous features may be preferable\nbe more or less normally distributed.\n",
			"lineHeight": 1.25,
			"baseline": 168
		},
		{
			"type": "arrow",
			"version": 130,
			"versionNonce": 269403253,
			"isDeleted": false,
			"id": "_SR2makWGyguzyB-_uWfp",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1952.8447342538539,
			"y": -724.0234941832709,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 5.333333333333485,
			"height": 261.33333333333337,
			"seed": 1276419846,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "pEiB7ZHy",
				"focus": 0.4954977843400149,
				"gap": 22.226504572506656
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-5.333333333333485,
					261.33333333333337
				]
			]
		},
		{
			"type": "text",
			"version": 524,
			"versionNonce": 1350936923,
			"isDeleted": false,
			"id": "pkGScdo7",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1868.8447342538539,
			"y": -442.6901608499396,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 866.0589599609375,
			"height": 250,
			"seed": 1089005594,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "x15rXSDtAVOkCuIi5W5pZ",
					"type": "arrow"
				}
			],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Principle component analysis\n\nThe direction with the largest variation makes the first Principle component\nThe direction orthogonal to the principle direction with then the largest variation\nmakes the second principle component, and so on\nThese happen to correspond to eigenvectors of the covariance matrix, ordered by their\ncorresponding eigenvalues.\n\nEquivalent: Singular values decomposition on mean-centered data.\n",
			"rawText": "Principle component analysis\n\nThe direction with the largest variation makes the first Principle component\nThe direction orthogonal to the principle direction with then the largest variation\nmakes the second principle component, and so on\nThese happen to correspond to eigenvectors of the covariance matrix, ordered by their\ncorresponding eigenvalues.\n\nEquivalent: Singular values decomposition on mean-centered data.\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Principle component analysis\n\nThe direction with the largest variation makes the first Principle component\nThe direction orthogonal to the principle direction with then the largest variation\nmakes the second principle component, and so on\nThese happen to correspond to eigenvectors of the covariance matrix, ordered by their\ncorresponding eigenvalues.\n\nEquivalent: Singular values decomposition on mean-centered data.\n",
			"lineHeight": 1.25,
			"baseline": 243
		},
		{
			"type": "arrow",
			"version": 440,
			"versionNonce": 587754965,
			"isDeleted": false,
			"id": "aq5cBn1TdaL36tM_OO0dV",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -114.58934278683603,
			"y": -284.13153653151073,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 1337.8023790277339,
			"height": 146.72871819653892,
			"seed": 259761222,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "xAeMnaSc",
				"focus": 0.6856506258914223,
				"gap": 6.101596690635347
			},
			"endBinding": {
				"elementId": "uRW9ZDzk",
				"focus": -0.47185039780870597,
				"gap": 12.55275926825766
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					1337.8023790277339,
					146.72871819653892
				]
			]
		},
		{
			"type": "text",
			"version": 936,
			"versionNonce": 1113441787,
			"isDeleted": false,
			"id": "Qk4a6YW3",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 751.2498580434366,
			"y": 341.8495971469921,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 743.1192016601562,
			"height": 275,
			"seed": 104302086,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "E6TkJnd23vZln-AJCYUka",
					"type": "arrow"
				}
			],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Basic statistics\n\nMean is the average of some attribute in the dataset\n\nvariance measure the spread or dispersion of data points \naround the mean.It quantifies how much each data point differs\nfrom the mean.\n    - A high variance indicates that the data points are spread out, \n    - A low variance indicates they are closely clustered around the mean.\n    - formula: s^2 = sum((data_point - mean)^2)/(sample_size - 1 )\n",
			"rawText": "Basic statistics\n\nMean is the average of some attribute in the dataset\n\nvariance measure the spread or dispersion of data points \naround the mean.It quantifies how much each data point differs\nfrom the mean.\n    - A high variance indicates that the data points are spread out, \n    - A low variance indicates they are closely clustered around the mean.\n    - formula: s^2 = sum((data_point - mean)^2)/(sample_size - 1 )\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Basic statistics\n\nMean is the average of some attribute in the dataset\n\nvariance measure the spread or dispersion of data points \naround the mean.It quantifies how much each data point differs\nfrom the mean.\n    - A high variance indicates that the data points are spread out, \n    - A low variance indicates they are closely clustered around the mean.\n    - formula: s^2 = sum((data_point - mean)^2)/(sample_size - 1 )\n",
			"lineHeight": 1.25,
			"baseline": 268
		},
		{
			"type": "text",
			"version": 495,
			"versionNonce": 1875241781,
			"isDeleted": false,
			"id": "Kb1RGglg",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 770.5679861339238,
			"y": 757.6947228494762,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 546.6195068359375,
			"height": 275,
			"seed": 158785798,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Example variance\nData set:\n[6, 9, 14, 10, 5, 8, 11]\n\ns^2 = sum((data_point - mean)^2)/(sample_size - 1)\n\nsample_size = 7\nmean =  (6 + 9 + 14 + 10 + 5 + 8 + 11) / sample_size\nmean =  9\n\n",
			"rawText": "Example variance\nData set:\n[6, 9, 14, 10, 5, 8, 11]\n\ns^2 = sum((data_point - mean)^2)/(sample_size - 1)\n\nsample_size = 7\nmean =  (6 + 9 + 14 + 10 + 5 + 8 + 11) / sample_size\nmean =  9\n\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Example variance\nData set:\n[6, 9, 14, 10, 5, 8, 11]\n\ns^2 = sum((data_point - mean)^2)/(sample_size - 1)\n\nsample_size = 7\nmean =  (6 + 9 + 14 + 10 + 5 + 8 + 11) / sample_size\nmean =  9\n\n",
			"lineHeight": 1.25,
			"baseline": 268
		},
		{
			"type": "line",
			"version": 535,
			"versionNonce": 1212763803,
			"isDeleted": false,
			"id": "ejF0qXb13I3Paibns0nBk",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 759.716951823084,
			"y": 1106.2828973154901,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 607.0360564349817,
			"height": 8.967022266086815,
			"seed": 800380457,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					607.0360564349817,
					-8.967022266086815
				]
			]
		},
		{
			"type": "line",
			"version": 565,
			"versionNonce": 917290133,
			"isDeleted": false,
			"id": "wIucUYzyKmt3ZkfqePT6F",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 843.4654859058116,
			"y": 1050.7994934856833,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 7.465477771832639,
			"height": 497.8565022900919,
			"seed": 728543783,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					-7.465477771832639,
					497.8565022900919
				]
			]
		},
		{
			"type": "text",
			"version": 199,
			"versionNonce": 1694155579,
			"isDeleted": false,
			"id": "YaQyN86j",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 784.8415120479026,
			"y": 1121.9857474560017,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 12.79998779296875,
			"height": 25,
			"seed": 2119696105,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "6",
			"rawText": "6",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "6",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 227,
			"versionNonce": 259154421,
			"isDeleted": false,
			"id": "ctaaK5yt",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 783.7946553718684,
			"y": 1165.9678094159126,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 12.17999267578125,
			"height": 25,
			"seed": 731374183,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "9",
			"rawText": "9",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "9",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 221,
			"versionNonce": 550806491,
			"isDeleted": false,
			"id": "ieIXMhSe",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 785.4486984600142,
			"y": 1212.41641735967,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 19.17999267578125,
			"height": 225,
			"seed": 1895542651,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "14\n\n10\n\n5\n\n8\n\n11",
			"rawText": "14\n\n10\n\n5\n\n8\n\n11",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "14\n\n10\n\n5\n\n8\n\n11",
			"lineHeight": 1.25,
			"baseline": 218
		},
		{
			"type": "text",
			"version": 245,
			"versionNonce": 2132564821,
			"isDeleted": false,
			"id": "ruvquWbz",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 881.2451639458164,
			"y": 1112.1434815240639,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 21.8399658203125,
			"height": 325,
			"seed": 647769467,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "-3\n\n0\n\n5\n\n1\n\n-4\n\n-1\n\n2",
			"rawText": "-3\n\n0\n\n5\n\n1\n\n-4\n\n-1\n\n2",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "-3\n\n0\n\n5\n\n1\n\n-4\n\n-1\n\n2",
			"lineHeight": 1.25,
			"baseline": 318
		},
		{
			"type": "text",
			"version": 227,
			"versionNonce": 1407807611,
			"isDeleted": false,
			"id": "dcEloLkq",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 861.5486944066797,
			"y": 1068.274072095986,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 186.33978271484375,
			"height": 25,
			"seed": 1125949685,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "data_point - mean",
			"rawText": "data_point - mean",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "data_point - mean",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "line",
			"version": 398,
			"versionNonce": 1308633269,
			"isDeleted": false,
			"id": "MNJpOUq9PVNV2f9_e8fk7",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1061.1992720079313,
			"y": 1023.5093685979475,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 6.267058489725287,
			"height": 500.46938510807036,
			"seed": 807190075,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					-6.267058489725287,
					500.46938510807036
				]
			]
		},
		{
			"type": "text",
			"version": 242,
			"versionNonce": 805021979,
			"isDeleted": false,
			"id": "f39BxG1u",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1081.7910356170291,
			"y": 1068.274072095986,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 236.5197296142578,
			"height": 25,
			"seed": 1026396373,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "(data_point - mean )^2",
			"rawText": "(data_point - mean )^2",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "(data_point - mean )^2",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 223,
			"versionNonce": 499337749,
			"isDeleted": false,
			"id": "CQU60XBB",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1106.8592695759307,
			"y": 1116.6199518738676,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 26.5999755859375,
			"height": 325,
			"seed": 1183215259,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "9\n\n0\n\n25\n\n2\n\n16\n\n1\n\n4",
			"rawText": "9\n\n0\n\n25\n\n2\n\n16\n\n1\n\n4",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "9\n\n0\n\n25\n\n2\n\n16\n\n1\n\n4",
			"lineHeight": 1.25,
			"baseline": 318
		},
		{
			"type": "line",
			"version": 542,
			"versionNonce": 176016827,
			"isDeleted": false,
			"id": "tymzrY0RASpfurFiEpelT",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 755.008700081348,
			"y": 1452.3552281091563,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 643.7164363017937,
			"height": 10.74352883952929,
			"seed": 603298421,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					643.7164363017937,
					-10.74352883952929
				]
			]
		},
		{
			"type": "text",
			"version": 200,
			"versionNonce": 1062944629,
			"isDeleted": false,
			"id": "qR2IpWdW",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 772.9145814805634,
			"y": 1469.365815438411,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 26.419967651367188,
			"height": 25,
			"seed": 1379097147,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "63",
			"rawText": "63",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "63",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 200,
			"versionNonce": 1720868443,
			"isDeleted": false,
			"id": "wrHX05cC",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1091.6392703865977,
			"y": 1459.5175806688426,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 25.15997314453125,
			"height": 25,
			"seed": 2080260533,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "56",
			"rawText": "56",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "56",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 231,
			"versionNonce": 1225623765,
			"isDeleted": false,
			"id": "OQxPTp8M",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 764.8569348509166,
			"y": 1575.9058097637426,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 207.85975646972656,
			"height": 25,
			"seed": 843436891,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "S^2 = 56/(7-1) = 9.3",
			"rawText": "S^2 = 56/(7-1) = 9.3",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "S^2 = 56/(7-1) = 9.3",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "arrow",
			"version": 131,
			"versionNonce": 1057741563,
			"isDeleted": false,
			"id": "x15rXSDtAVOkCuIi5W5pZ",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2756.8529768808157,
			"y": -406.032883802031,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 289.1799845973287,
			"height": 80.57646629646928,
			"seed": 1075589083,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "pkGScdo7",
				"focus": 0.1564430531252796,
				"gap": 21.949282666024374
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					289.1799845973287,
					-80.57646629646928
				]
			]
		},
		{
			"type": "text",
			"version": 590,
			"versionNonce": 1819256373,
			"isDeleted": false,
			"id": "9GzO1MC6",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3071.996489507007,
			"y": -508.0964077775589,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 625.4193115234375,
			"height": 425,
			"seed": 1949716597,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "The goals is to find a projection that captures the largest\namount of variation in the data\n\n- Find the eigenvectors of the covariance matrix\n- The eigenvectors define the new space\n- Example -> the largest varation in the direction of e_1, the \n  first principle component.\n- Next principle component e_2 is perpendicular to\n e_1\n\n\n\n- project the data points \n  onto the first few\n  principle components\n\n",
			"rawText": "The goals is to find a projection that captures the largest\namount of variation in the data\n\n- Find the eigenvectors of the covariance matrix\n- The eigenvectors define the new space\n- Example -> the largest varation in the direction of e_1, the \n  first principle component.\n- Next principle component e_2 is perpendicular to\n e_1\n\n\n\n- project the data points \n  onto the first few\n  principle components\n\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "The goals is to find a projection that captures the largest\namount of variation in the data\n\n- Find the eigenvectors of the covariance matrix\n- The eigenvectors define the new space\n- Example -> the largest varation in the direction of e_1, the \n  first principle component.\n- Next principle component e_2 is perpendicular to\n e_1\n\n\n\n- project the data points \n  onto the first few\n  principle components\n\n",
			"lineHeight": 1.25,
			"baseline": 418
		},
		{
			"type": "line",
			"version": 197,
			"versionNonce": 275563419,
			"isDeleted": false,
			"id": "Bhg2wAHepDlfA4Z9YZU6c",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3422.9517649316304,
			"y": -262.78583260830766,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.8952940699600731,
			"height": 205.91763609097717,
			"seed": 2050908565,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					0.8952940699600731,
					205.91763609097717
				]
			]
		},
		{
			"type": "line",
			"version": 252,
			"versionNonce": 208082837,
			"isDeleted": false,
			"id": "HRcChlKMnvNHLZq3bWyhi",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3423.847059001591,
			"y": -54.18231430744822,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 383.1858619432096,
			"height": 5.371764419764645,
			"seed": 1361411669,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					383.1858619432096,
					-5.371764419764645
				]
			]
		},
		{
			"type": "arrow",
			"version": 379,
			"versionNonce": 585603131,
			"isDeleted": false,
			"id": "vLrvUzYyk41W4fVwc4DBW",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3425.6376471415124,
			"y": -56.86819651733049,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 378.7093915934056,
			"height": 190.69763690164405,
			"seed": 137690229,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					378.7093915934056,
					-190.69763690164405
				]
			]
		},
		{
			"type": "text",
			"version": 32,
			"versionNonce": 321477877,
			"isDeleted": false,
			"id": "RQp7VaxK",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3831.205860833741,
			"y": -262.78583260830766,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 32.879974365234375,
			"height": 25,
			"seed": 815344629,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "e_1",
			"rawText": "e_1",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "e_1",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "arrow",
			"version": 195,
			"versionNonce": 341760219,
			"isDeleted": false,
			"id": "Wsv6w9kHUHl16wCDz5zgC",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3667.3670460309204,
			"y": -81.93643047623209,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 97.58705362572391,
			"height": 156.67646224313484,
			"seed": 1206116885,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": {
				"elementId": "kOomCPGU",
				"focus": 0.22754229413763158,
				"gap": 1.8588220988230546
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-97.58705362572391,
					-156.67646224313484
				]
			]
		},
		{
			"type": "text",
			"version": 37,
			"versionNonce": 138147413,
			"isDeleted": false,
			"id": "kOomCPGU",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3546.502346586217,
			"y": -265.47171481819,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 41.69996643066406,
			"height": 25,
			"seed": 545641397,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "Wsv6w9kHUHl16wCDz5zgC",
					"type": "arrow"
				}
			],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "e_2",
			"rawText": "e_2",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "e_2",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "freedraw",
			"version": 24,
			"versionNonce": 577045883,
			"isDeleted": false,
			"id": "JPMliQvHyLu0-oCM56ieU",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3518.7482304174328,
			"y": -160.7223086327798,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.0001,
			"height": 0.0001,
			"seed": 63224053,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.0001,
					0.0001
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 24,
			"versionNonce": 1718903733,
			"isDeleted": false,
			"id": "Cis3ZFf1iK9bSbK5vpMZH",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3634.2411654423718,
			"y": -209.0681884106615,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.0001,
			"height": 0.0001,
			"seed": 1108347,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.0001,
					0.0001
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 24,
			"versionNonce": 876387867,
			"isDeleted": false,
			"id": "yTTn9QwE954qeUQGttnUM",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3463.2399980798646,
			"y": -92.67995931576138,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.0001,
			"height": 0.0001,
			"seed": 696320277,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.0001,
					0.0001
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 29,
			"versionNonce": 838346005,
			"isDeleted": false,
			"id": "m6TFZdBH6qbGbY9_vE5BB",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3508.899995647864,
			"y": -110.58584071497671,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 3.581176279843021,
			"height": 1.7905881399215104,
			"seed": 2044753755,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.8952940699605278,
					0
				],
				[
					1.7905881399215104,
					0
				],
				[
					2.6858822098820383,
					-0.8952940699607552
				],
				[
					3.581176279843021,
					-1.7905881399215104
				],
				[
					0,
					0
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 29,
			"versionNonce": 618144443,
			"isDeleted": false,
			"id": "mSyF8a8GWRx0XV9j-R2SX",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3542.025876236413,
			"y": -131.17760432407442,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 2.6858822098820383,
			"height": 0.8952940699607552,
			"seed": 2002285019,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.8952940699605278,
					0
				],
				[
					0.8952940699605278,
					-0.8952940699607552
				],
				[
					1.7905881399210557,
					-0.8952940699607552
				],
				[
					2.6858822098820383,
					-0.8952940699607552
				],
				[
					0,
					0
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 24,
			"versionNonce": 1312602741,
			"isDeleted": false,
			"id": "sLnB3gvg-Y60dEprzvVuy",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3527.7011711170403,
			"y": -85.51760675607522,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.0001,
			"height": 0.0001,
			"seed": 230632539,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.0001,
					0.0001
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 24,
			"versionNonce": 1289360219,
			"isDeleted": false,
			"id": "g9ZbpqE9h4v-RMXyqRM0I",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3584.104697524569,
			"y": -87.30819489599673,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.0001,
			"height": 0.0001,
			"seed": 504133685,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.0001,
					0.0001
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 28,
			"versionNonce": 336045013,
			"isDeleted": false,
			"id": "n9ck5YvUAlVtzTQ0qfA_V",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3609.17293148347,
			"y": -126.70113397427065,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 2.685882209882493,
			"height": 0.8952940699607552,
			"seed": 945759803,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187857,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.8952940699609826,
					0
				],
				[
					1.7905881399219652,
					0
				],
				[
					2.685882209882493,
					-0.8952940699607552
				],
				[
					0,
					0
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 26,
			"versionNonce": 1284829179,
			"isDeleted": false,
			"id": "zDMfNs_FR5ujdyyyhUtxu",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3656.6235171913913,
			"y": -155.35054421301527,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.8952940699605278,
			"height": 0,
			"seed": 1834071829,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.8952940699605278,
					0
				],
				[
					0,
					0
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 24,
			"versionNonce": 661545269,
			"isDeleted": false,
			"id": "NWzF7xx4S2Vej4i4ObF2Q",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3713.0270435989196,
			"y": -183.9999544517599,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.0001,
			"height": 0.0001,
			"seed": 311033339,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.0001,
					0.0001
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 24,
			"versionNonce": 369834139,
			"isDeleted": false,
			"id": "wEEnPXXkAIQHOKboldi5N",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3699.597632549508,
			"y": -226.07877573991607,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.0001,
			"height": 0.0001,
			"seed": 1859585173,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.0001,
					0.0001
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 24,
			"versionNonce": 232157845,
			"isDeleted": false,
			"id": "rJ9HSfq0eIrZBmWS40Y5R",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3746.152924187468,
			"y": -234.13642236956298,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.0001,
			"height": 0.0001,
			"seed": 1355537371,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.0001,
					0.0001
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 24,
			"versionNonce": 921660731,
			"isDeleted": false,
			"id": "3qM18QBmtHCFcj8soBwG7",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3589.4764619443336,
			"y": -166.09407305254445,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.0001,
			"height": 0.0001,
			"seed": 133132469,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.0001,
					0.0001
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 27,
			"versionNonce": 66410485,
			"isDeleted": false,
			"id": "jMI8-Wy_A_zv1ZB1V9DpV",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3647.6705764917833,
			"y": -149.97877979325062,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0,
			"height": 1.7905881399215104,
			"seed": 169870779,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					0.8952940699607552
				],
				[
					0,
					1.7905881399215104
				],
				[
					0,
					0
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 24,
			"versionNonce": 1654918619,
			"isDeleted": false,
			"id": "a0LD87bUR4J8WQSAFWsGf",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3681.6917511502925,
			"y": -197.42936550117145,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.0001,
			"height": 0.0001,
			"seed": 1536818075,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.0001,
					0.0001
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 26,
			"versionNonce": 332435797,
			"isDeleted": false,
			"id": "Pyi_s3e68I7c2evTUP1aF",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3686.1682215000965,
			"y": -139.23525095372133,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.8952940699609826,
			"height": 0,
			"seed": 855811317,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.8952940699609826,
					0
				],
				[
					0,
					0
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 24,
			"versionNonce": 1010539131,
			"isDeleted": false,
			"id": "qml_zJW6fk7NW5zEWZ0Wo",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3661.099987541195,
			"y": -125.80583990430978,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.0001,
			"height": 0.0001,
			"seed": 1124980251,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.0001,
					0.0001
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 24,
			"versionNonce": 1790811829,
			"isDeleted": false,
			"id": "GGUzoaWOcB3yBiyBtqIX7",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3582.314109384647,
			"y": -116.85289920470211,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.0001,
			"height": 0.0001,
			"seed": 858915445,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.0001,
					0.0001
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 24,
			"versionNonce": 1618514715,
			"isDeleted": false,
			"id": "uIdqSEj5YAXWNkO0JFIok",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3608.2776374135096,
			"y": -175.94230782211298,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.0001,
			"height": 0.0001,
			"seed": 558966779,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0.0001,
					0.0001
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "freedraw",
			"version": 33,
			"versionNonce": 1868693525,
			"isDeleted": false,
			"id": "so2xMq-JQ_ZRu48WDPCQe",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3671.8435163807244,
			"y": -194.74348329128907,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 3.581176279843021,
			"height": 3.581176279843021,
			"seed": 74496661,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					0.8952940699607552
				],
				[
					-0.8952940699609826,
					0.8952940699607552
				],
				[
					-0.8952940699609826,
					1.7905881399215104
				],
				[
					-0.8952940699609826,
					2.6858822098822657
				],
				[
					-1.7905881399215104,
					2.6858822098822657
				],
				[
					-1.7905881399215104,
					3.581176279843021
				],
				[
					-2.685882209882493,
					3.581176279843021
				],
				[
					-3.581176279843021,
					3.581176279843021
				],
				[
					0,
					0
				]
			],
			"lastCommittedPoint": null,
			"simulatePressure": true,
			"pressures": []
		},
		{
			"type": "text",
			"version": 25,
			"versionNonce": 801994683,
			"isDeleted": false,
			"id": "osMopkAE",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3796.2893921052714,
			"y": -36.27643290823278,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 33.89997863769531,
			"height": 25,
			"seed": 1547527221,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "X_1",
			"rawText": "X_1",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "X_1",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 27,
			"versionNonce": 397620597,
			"isDeleted": false,
			"id": "OiM0xEhO",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3359.3858859644156,
			"y": -261.8905385383469,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 41.999969482421875,
			"height": 25,
			"seed": 1958376533,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "x_2",
			"rawText": "x_2",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "x_2",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "image",
			"version": 224,
			"versionNonce": 1482475611,
			"isDeleted": false,
			"id": "sLD3CsLgTC1z5xjUIDWhY",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3744.282306863535,
			"y": -534.4928894767004,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 403.93768392032405,
			"height": 173.22145204612437,
			"seed": 308614357,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "cec05b9b37599cc16e03818eb55237366b979acb",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "arrow",
			"version": 222,
			"versionNonce": 2130099925,
			"isDeleted": false,
			"id": "LNaqdzirb_suBwCbU44Md",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1416.7810280532262,
			"y": -1031.3469467560521,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 420.62189471752345,
			"height": 261.5742407774601,
			"seed": 423617557,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "y87ag79twG1MwvgTcq1Qz",
				"focus": -0.0004519532591338222,
				"gap": 16.76948753352883
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-420.62189471752345,
					-261.5742407774601
				]
			]
		},
		{
			"type": "text",
			"version": 482,
			"versionNonce": 536413435,
			"isDeleted": false,
			"id": "FA5PbEUw",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2326.37587537987,
			"y": -1377.0455664770166,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 562.6593017578125,
			"height": 300,
			"seed": 677794901,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "mSfuz8B7T5YmuyOOLVfkN",
					"type": "arrow"
				},
				{
					"id": "lP1E8LOAZ3IkvhH35UglT",
					"type": "arrow"
				}
			],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Similarity\nis a numirical measure of how two alike two objects are.\nIs higher when objects are more alike\noften falls in the range of [0,1]\n\nDissimilarity\nNumirical measure of how different to objects are\nlower when objests are more alike\nminumum is 0.\nUpper limit varies.\n\nProximity  refers to a similarity or dissimilarity",
			"rawText": "Similarity\nis a numirical measure of how two alike two objects are.\nIs higher when objects are more alike\noften falls in the range of [0,1]\n\nDissimilarity\nNumirical measure of how different to objects are\nlower when objests are more alike\nminumum is 0.\nUpper limit varies.\n\nProximity  refers to a similarity or dissimilarity",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Similarity\nis a numirical measure of how two alike two objects are.\nIs higher when objects are more alike\noften falls in the range of [0,1]\n\nDissimilarity\nNumirical measure of how different to objects are\nlower when objests are more alike\nminumum is 0.\nUpper limit varies.\n\nProximity  refers to a similarity or dissimilarity",
			"lineHeight": 1.25,
			"baseline": 293
		},
		{
			"type": "arrow",
			"version": 155,
			"versionNonce": 1002576949,
			"isDeleted": false,
			"id": "mSfuz8B7T5YmuyOOLVfkN",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2346.0925266947547,
			"y": -1399.3911046338867,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 106.4699171003731,
			"height": 252.37313683051434,
			"seed": 1860069499,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "FA5PbEUw",
				"focus": -0.6625966494428964,
				"gap": 22.345538156870134
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-106.4699171003731,
					-252.37313683051434
				]
			]
		},
		{
			"type": "text",
			"version": 422,
			"versionNonce": 1847897499,
			"isDeleted": false,
			"id": "OwJ1HVmi",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2746.9977700973946,
			"y": -1871.2762927701087,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 708.6192016601562,
			"height": 375,
			"seed": 1793328693,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "For simple attributes\n\nNominal attributes p and q:\n    d = 0 -> p = q\n    d = 1 -> p != q\ns = 1 - d\n\nOrdinal attributes -> map n distinct values to integers from 0 to n - 1\n\nd = (abs(p - 1)) / (n - 1)\ns = 1 - d\n\nInterval or ration attributes\nd = abs(p - q ) \ns = 1/(1 + d)",
			"rawText": "For simple attributes\n\nNominal attributes p and q:\n    d = 0 -> p = q\n    d = 1 -> p != q\ns = 1 - d\n\nOrdinal attributes -> map n distinct values to integers from 0 to n - 1\n\nd = (abs(p - 1)) / (n - 1)\ns = 1 - d\n\nInterval or ration attributes\nd = abs(p - q ) \ns = 1/(1 + d)",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "For simple attributes\n\nNominal attributes p and q:\n    d = 0 -> p = q\n    d = 1 -> p != q\ns = 1 - d\n\nOrdinal attributes -> map n distinct values to integers from 0 to n - 1\n\nd = (abs(p - 1)) / (n - 1)\ns = 1 - d\n\nInterval or ration attributes\nd = abs(p - q ) \ns = 1/(1 + d)",
			"lineHeight": 1.25,
			"baseline": 368
		},
		{
			"type": "arrow",
			"version": 70,
			"versionNonce": 1979370901,
			"isDeleted": false,
			"id": "lP1E8LOAZ3IkvhH35UglT",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2344.7780832737626,
			"y": -1299.4934046384749,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 310.20864735417354,
			"height": 30.232198682822172,
			"seed": 892157941,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "FA5PbEUw",
				"focus": 0.24369990991738266,
				"gap": 18.40220789389241
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-310.20864735417354,
					-30.232198682822172
				]
			]
		},
		{
			"type": "image",
			"version": 366,
			"versionNonce": 370295355,
			"isDeleted": false,
			"id": "y8kdnFTE4I9t1bYNaKZ1Y",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3031.609085898942,
			"y": -1370.186965178193,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 305.4908905897993,
			"height": 202.26565815306347,
			"seed": 1545662843,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "7e458bc3dd40e1b01347c01d8eb4402de395f173",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "text",
			"version": 74,
			"versionNonce": 1020678901,
			"isDeleted": false,
			"id": "uRW9ZDzk",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1235.7657955091556,
			"y": -151.98429811223303,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 84.23989868164062,
			"height": 25,
			"seed": 1293971637,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "aq5cBn1TdaL36tM_OO0dV",
					"type": "arrow"
				},
				{
					"id": "E6TkJnd23vZln-AJCYUka",
					"type": "arrow"
				},
				{
					"id": "5wMFjgYUfLxun7n4pbbJG",
					"type": "arrow"
				}
			],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Stastics",
			"rawText": "Stastics",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Stastics",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "arrow",
			"version": 138,
			"versionNonce": 1621377755,
			"isDeleted": false,
			"id": "E6TkJnd23vZln-AJCYUka",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1251.5391165610627,
			"y": -115.1798823244497,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 219.5120513057077,
			"height": 440.3385460324076,
			"seed": 1624186677,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "uRW9ZDzk",
				"focus": 0.29431882520724945,
				"gap": 11.804415787783341
			},
			"endBinding": {
				"elementId": "Qk4a6YW3",
				"focus": -0.38092719226777927,
				"gap": 16.69093343903421
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-219.5120513057077,
					440.3385460324076
				]
			]
		},
		{
			"type": "arrow",
			"version": 271,
			"versionNonce": 484060245,
			"isDeleted": false,
			"id": "5wMFjgYUfLxun7n4pbbJG",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1335.6634955045668,
			"y": -119.12321258742668,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 1018.6936512690024,
			"height": 682.1961354949838,
			"seed": 1167533051,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "uRW9ZDzk",
				"focus": -0.4503271909485128,
				"gap": 15.657801313770506
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					1018.6936512690024,
					682.1961354949838
				]
			]
		},
		{
			"type": "text",
			"version": 82,
			"versionNonce": 1449996155,
			"isDeleted": false,
			"id": "qM1ryo3O",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2375.3882415094467,
			"y": 561.7584794865643,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 101.25987243652344,
			"height": 75,
			"seed": 2038133467,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "4zLFvau0ScJGp0wVlHZhv",
					"type": "arrow"
				},
				{
					"id": "uyGTZbgk1875bksr9T5zX",
					"type": "arrow"
				},
				{
					"id": "phuQrL1_Ab-9g5n2k33ta",
					"type": "arrow"
				},
				{
					"id": "ew0B36ATSgAjPht-HGLvi",
					"type": "arrow"
				},
				{
					"id": "3iwTJUlyDXS0bbXW9hfyP",
					"type": "arrow"
				},
				{
					"id": "CgQ9PeO6OUzRYfk7eRrfa",
					"type": "arrow"
				},
				{
					"id": "VpvRjGkDwtv1AR1osHlVV",
					"type": "arrow"
				},
				{
					"id": "skn_spL7oFw_zgj1lrcdM",
					"type": "arrow"
				}
			],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Probability\n\n",
			"rawText": "Probability\n\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Probability\n\n",
			"lineHeight": 1.25,
			"baseline": 68
		},
		{
			"type": "arrow",
			"version": 69,
			"versionNonce": 1977342389,
			"isDeleted": false,
			"id": "7V88Pi9VGv1PzrzzdDqg3",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2429.2804217701287,
			"y": 532.8407242247347,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 6.57221710496151,
			"height": 147.21766315113337,
			"seed": 721737781,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					6.57221710496151,
					-147.21766315113337
				]
			]
		},
		{
			"type": "text",
			"version": 111,
			"versionNonce": 1236240411,
			"isDeleted": false,
			"id": "veZMpcNz",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2388.532675719369,
			"y": 248.9209452904061,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 384.73956298828125,
			"height": 50,
			"seed": 2108114235,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "mwpuxeuQ_wtbypgmzGtlv",
					"type": "arrow"
				}
			],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "A probability is a real-values function \ndefined on the sample space Ω",
			"rawText": "A probability is a real-values function \ndefined on the sample space Ω",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "A probability is a real-values function \ndefined on the sample space Ω",
			"lineHeight": 1.25,
			"baseline": 43
		},
		{
			"type": "arrow",
			"version": 57,
			"versionNonce": 285268757,
			"isDeleted": false,
			"id": "mwpuxeuQ_wtbypgmzGtlv",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2785.494588859031,
			"y": 247.60650186941376,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 178.76430525494743,
			"height": 35.48997236679105,
			"seed": 1929428853,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "veZMpcNz",
				"focus": 0.22634708494477643,
				"gap": 12.222350151380851
			},
			"endBinding": {
				"elementId": "t4jo_umJRnk_tFB7NIJ7J",
				"focus": 0.416204828553911,
				"gap": 29.355105236594227
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					178.76430525494743,
					-35.48997236679105
				]
			]
		},
		{
			"type": "image",
			"version": 176,
			"versionNonce": 543018171,
			"isDeleted": false,
			"id": "t4jo_umJRnk_tFB7NIJ7J",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2993.6139993505726,
			"y": 123.41192949344645,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 392.1438829271555,
			"height": 206.07196762201158,
			"seed": 1892978459,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "mwpuxeuQ_wtbypgmzGtlv",
					"type": "arrow"
				}
			],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "0740cc065462128f113e3db8654ff2d3cdba170d",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "arrow",
			"version": 75,
			"versionNonce": 1992208501,
			"isDeleted": false,
			"id": "4zLFvau0ScJGp0wVlHZhv",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2491.059262556764,
			"y": 560.4440360655719,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 311.52309077516566,
			"height": 110.41324736334991,
			"seed": 319344469,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "qM1ryo3O",
				"focus": -0.28428113319192727,
				"gap": 14.411148610794044
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					311.52309077516566,
					-110.41324736334991
				]
			]
		},
		{
			"type": "text",
			"version": 306,
			"versionNonce": 1578794331,
			"isDeleted": false,
			"id": "zllxtzrC",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2844.6445428036823,
			"y": 409.28304265146187,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 646.0993041992188,
			"height": 175,
			"seed": 527616821,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Random variable\nQuantity of interest related to a random experiment\n    - X equals the number of heads when flipping a coin 30 times\n    - X is the time required to get back home\n\nProbability of distribution for a discrete random variable X\n",
			"rawText": "Random variable\nQuantity of interest related to a random experiment\n    - X equals the number of heads when flipping a coin 30 times\n    - X is the time required to get back home\n\nProbability of distribution for a discrete random variable X\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Random variable\nQuantity of interest related to a random experiment\n    - X equals the number of heads when flipping a coin 30 times\n    - X is the time required to get back home\n\nProbability of distribution for a discrete random variable X\n",
			"lineHeight": 1.25,
			"baseline": 168
		},
		{
			"type": "arrow",
			"version": 107,
			"versionNonce": 81451477,
			"isDeleted": false,
			"id": "GrLomWnwaIdPJVYO1N3Fh",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3426.942978303255,
			"y": 547.2996018556494,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 381.18859208775575,
			"height": 10.515547367938098,
			"seed": 1941454011,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					381.18859208775575,
					-10.515547367938098
				]
			]
		},
		{
			"type": "text",
			"version": 225,
			"versionNonce": 1849170427,
			"isDeleted": false,
			"id": "z4yo4LJu",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 3931.6892519642834,
			"y": 405.33971238848517,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 532.2394409179688,
			"height": 150,
			"seed": 1996604661,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Example\n    - A fair die is rolled 4 times\n    - X is number of times the outcome is 3 or higher\n    - Possible outcomes -> 6^4 = 1296\n    - possible values of X are 0,1,2,3,4\n",
			"rawText": "Example\n    - A fair die is rolled 4 times\n    - X is number of times the outcome is 3 or higher\n    - Possible outcomes -> 6^4 = 1296\n    - possible values of X are 0,1,2,3,4\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Example\n    - A fair die is rolled 4 times\n    - X is number of times the outcome is 3 or higher\n    - Possible outcomes -> 6^4 = 1296\n    - possible values of X are 0,1,2,3,4\n",
			"lineHeight": 1.25,
			"baseline": 143
		},
		{
			"type": "arrow",
			"version": 46,
			"versionNonce": 1147852597,
			"isDeleted": false,
			"id": "uyGTZbgk1875bksr9T5zX",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2487.115932293787,
			"y": 593.3051215903786,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 382.50303550874787,
			"height": 43.37663289274451,
			"seed": 1987346747,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "qM1ryo3O",
				"focus": -0.29790727826387864,
				"gap": 10.467818347816774
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					382.50303550874787,
					43.37663289274451
				]
			]
		},
		{
			"type": "text",
			"version": 270,
			"versionNonce": 767107739,
			"isDeleted": false,
			"id": "M7mxkaYE",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2903.794496748334,
			"y": 634.0528676411386,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 625.6591796875,
			"height": 150,
			"seed": 1727691253,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Probablity density function\nQuestions:\n    - Probability that X takes a single particlar value equals?\n    - Can f(x) be negative\n    - can f(x) be larger than 1\n",
			"rawText": "Probablity density function\nQuestions:\n    - Probability that X takes a single particlar value equals?\n    - Can f(x) be negative\n    - can f(x) be larger than 1\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Probablity density function\nQuestions:\n    - Probability that X takes a single particlar value equals?\n    - Can f(x) be negative\n    - can f(x) be larger than 1\n",
			"lineHeight": 1.25,
			"baseline": 143
		},
		{
			"type": "arrow",
			"version": 105,
			"versionNonce": 2144610453,
			"isDeleted": false,
			"id": "phuQrL1_Ab-9g5n2k33ta",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2473.971498083864,
			"y": 639.3106413251078,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 424.56522498050026,
			"height": 226.08426841066898,
			"seed": 1522674165,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187858,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "qM1ryo3O",
				"focus": 0.2252010552469852,
				"gap": 2.5521618385434977
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					424.56522498050026,
					226.08426841066898
				]
			]
		},
		{
			"type": "text",
			"version": 211,
			"versionNonce": 894441275,
			"isDeleted": false,
			"id": "YP7TKSf8",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2977.4033283239,
			"y": 854.8793623678387,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 627.539306640625,
			"height": 100,
			"seed": 2005114715,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Guassian distribution\n    - Applicable in many fields due to the central limit theorem\n    - Location parameter(mean) and spread(standard devation)\n",
			"rawText": "Guassian distribution\n    - Applicable in many fields due to the central limit theorem\n    - Location parameter(mean) and spread(standard devation)\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Guassian distribution\n    - Applicable in many fields due to the central limit theorem\n    - Location parameter(mean) and spread(standard devation)\n",
			"lineHeight": 1.25,
			"baseline": 93
		},
		{
			"type": "arrow",
			"version": 114,
			"versionNonce": 416042485,
			"isDeleted": false,
			"id": "ew0B36ATSgAjPht-HGLvi",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2464.770394136918,
			"y": 651.1406321140382,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 341.75528945798806,
			"height": 358.84305393088744,
			"seed": 558504795,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "qM1ryo3O",
				"focus": 0.12345189154689461,
				"gap": 14.382152627473943
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					341.75528945798806,
					358.84305393088744
				]
			]
		},
		{
			"type": "text",
			"version": 186,
			"versionNonce": 1667200987,
			"isDeleted": false,
			"id": "y3FrjbRE",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2843.3300993826897,
			"y": 1029.7003373598095,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 670.17919921875,
			"height": 100,
			"seed": 1215231611,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Binomial distribution\n    - Number of successes in a number of independant yes/no trails\n        -> # sixes in a game of dice\n        -> Tossing a coin many times",
			"rawText": "Binomial distribution\n    - Number of successes in a number of independant yes/no trails\n        -> # sixes in a game of dice\n        -> Tossing a coin many times",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Binomial distribution\n    - Number of successes in a number of independant yes/no trails\n        -> # sixes in a game of dice\n        -> Tossing a coin many times",
			"lineHeight": 1.25,
			"baseline": 93
		},
		{
			"type": "arrow",
			"version": 86,
			"versionNonce": 509134677,
			"isDeleted": false,
			"id": "3iwTJUlyDXS0bbXW9hfyP",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2429.280421770127,
			"y": 652.4550755350305,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 193.22318288586257,
			"height": 432.4518855064538,
			"seed": 2101878875,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "qM1ryo3O",
				"focus": 0.30431654072214426,
				"gap": 15.696596048466176
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					193.22318288586257,
					432.4518855064538
				]
			]
		},
		{
			"type": "text",
			"version": 387,
			"versionNonce": 637125755,
			"isDeleted": false,
			"id": "VYOXrQOq",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2552.8381033433993,
			"y": 1120.3969334082753,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 568.4193115234375,
			"height": 200,
			"seed": 631923093,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Poisson Distribution\n    - Probability of numbers of events occuring in a fixed\n      period of time and space\n        -> # of people entering a builder per hour\n        -> # of hedgehogs killed per km of road\n        -> # of mutations per 100.000 base paris\n        -> # of students dozing of per minute\n",
			"rawText": "Poisson Distribution\n    - Probability of numbers of events occuring in a fixed\n      period of time and space\n        -> # of people entering a builder per hour\n        -> # of hedgehogs killed per km of road\n        -> # of mutations per 100.000 base paris\n        -> # of students dozing of per minute\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Poisson Distribution\n    - Probability of numbers of events occuring in a fixed\n      period of time and space\n        -> # of people entering a builder per hour\n        -> # of hedgehogs killed per km of road\n        -> # of mutations per 100.000 base paris\n        -> # of students dozing of per minute\n",
			"lineHeight": 1.25,
			"baseline": 193
		},
		{
			"type": "arrow",
			"version": 605,
			"versionNonce": 583996597,
			"isDeleted": false,
			"id": "CgQ9PeO6OUzRYfk7eRrfa",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2388.5787434309123,
			"y": 651.1406321140383,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 211.26791538977614,
			"height": 479.7718486621751,
			"seed": 879885621,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "qM1ryo3O",
				"focus": 0.21734309316564374,
				"gap": 14.382152627474056
			},
			"endBinding": {
				"elementId": "AQ8inZD5",
				"focus": -0.6148571451720071,
				"gap": 11.829990788930445
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-211.26791538977614,
					479.7718486621751
				]
			]
		},
		{
			"type": "text",
			"version": 398,
			"versionNonce": 81886491,
			"isDeleted": false,
			"id": "AQ8inZD5",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2061.2362638922937,
			"y": 1142.742471565144,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 487.6394348144531,
			"height": 200,
			"seed": 1577618203,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "CgQ9PeO6OUzRYfk7eRrfa",
					"type": "arrow"
				}
			],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Exponential distribution\n    - Probability density of times between events\n        -> time it takes before the next person\n           enters the builder\n        -> time between hits on a website\n    - Rate parameter λ\n\nf(x ; λ) = λ e^(-λ x)",
			"rawText": "Exponential distribution\n    - Probability density of times between events\n        -> time it takes before the next person\n           enters the builder\n        -> time between hits on a website\n    - Rate parameter λ\n\nf(x ; λ) = λ e^(-λ x)",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Exponential distribution\n    - Probability density of times between events\n        -> time it takes before the next person\n           enters the builder\n        -> time between hits on a website\n    - Rate parameter λ\n\nf(x ; λ) = λ e^(-λ x)",
			"lineHeight": 1.25,
			"baseline": 193
		},
		{
			"type": "arrow",
			"version": 492,
			"versionNonce": 1372894741,
			"isDeleted": false,
			"id": "VpvRjGkDwtv1AR1osHlVV",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2389.7110612006236,
			"y": 645.9595834335132,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 518.6674259048154,
			"height": 478.38068023773894,
			"seed": 2051004981,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "qM1ryo3O",
				"focus": -0.15683978685213393,
				"gap": 9.201103946948933
			},
			"endBinding": {
				"elementId": "zVZ42GnX",
				"focus": -0.1161186617955417,
				"gap": 11.829990788930445
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-518.6674259048154,
					478.38068023773894
				]
			]
		},
		{
			"type": "text",
			"version": 367,
			"versionNonce": 1804149179,
			"isDeleted": false,
			"id": "zVZ42GnX",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1659.016577068661,
			"y": 1136.1702544601826,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 342.319580078125,
			"height": 100,
			"seed": 1238463259,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "VpvRjGkDwtv1AR1osHlVV",
					"type": "arrow"
				}
			],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Gamma distribution\n\"Guassian\" for only positive values\n    - Distribution of incomes\n    - Lifetime of light bulbs",
			"rawText": "Gamma distribution\n\"Guassian\" for only positive values\n    - Distribution of incomes\n    - Lifetime of light bulbs",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Gamma distribution\n\"Guassian\" for only positive values\n    - Distribution of incomes\n    - Lifetime of light bulbs",
			"lineHeight": 1.25,
			"baseline": 93
		},
		{
			"type": "arrow",
			"version": 721,
			"versionNonce": 1180642165,
			"isDeleted": false,
			"id": "skn_spL7oFw_zgj1lrcdM",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 2377.0876305598986,
			"y": 646.938430338223,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 518.7237759525419,
			"height": 266.16411048584905,
			"seed": 1302129269,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "qM1ryo3O",
				"focus": -0.3534322557314015,
				"gap": 10.17995085165876
			},
			"endBinding": {
				"elementId": "PYvjykIi",
				"focus": -0.14094809192717966,
				"gap": 15.385653119333028
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-518.7237759525419,
					266.16411048584905
				]
			]
		},
		{
			"type": "text",
			"version": 351,
			"versionNonce": 856896091,
			"isDeleted": false,
			"id": "PYvjykIi",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1599.86662312401,
			"y": 928.4881939434051,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 288.399658203125,
			"height": 125,
			"seed": 73776187,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "skn_spL7oFw_zgj1lrcdM",
					"type": "arrow"
				}
			],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Chi-square distribtuion\n\nThis is often used in\nstatistical significance tests\n",
			"rawText": "Chi-square distribtuion\n\nThis is often used in\nstatistical significance tests\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Chi-square distribtuion\n\nThis is often used in\nstatistical significance tests\n",
			"lineHeight": 1.25,
			"baseline": 118
		},
		{
			"type": "arrow",
			"version": 468,
			"versionNonce": 548664533,
			"isDeleted": false,
			"id": "Rqk-DCU3Tkfr44wM8Bt7R",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -232.06914358511858,
			"y": -283.0013968847586,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 1518.8235294117644,
			"height": 781.1764705882351,
			"seed": 703351355,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "xAeMnaSc",
				"focus": -0.6575537327454906,
				"gap": 9.723264984044363
			},
			"endBinding": {
				"elementId": "egeZIM0h",
				"focus": -0.11458607892370395,
				"gap": 12.941176470588289
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-977.6470588235293,
					117.64705882352939
				],
				[
					-1518.8235294117644,
					781.1764705882351
				]
			]
		},
		{
			"type": "text",
			"version": 125,
			"versionNonce": 1817325307,
			"isDeleted": false,
			"id": "egeZIM0h",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1828.5397318204132,
			"y": 511.1162501740648,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 131.1598358154297,
			"height": 25,
			"seed": 434114517,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "Rqk-DCU3Tkfr44wM8Bt7R",
					"type": "arrow"
				},
				{
					"id": "OSirp_mW-I88po8_gVc3r",
					"type": "arrow"
				},
				{
					"id": "-ZaQF7u4J3yQlRF-6AYH-",
					"type": "arrow"
				},
				{
					"id": "R04GY2No0-0tIAVeAV7j3",
					"type": "arrow"
				}
			],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Classification",
			"rawText": "Classification",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Classification",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "arrow",
			"version": 68,
			"versionNonce": 1550357045,
			"isDeleted": false,
			"id": "OSirp_mW-I88po8_gVc3r",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1833.2456141733542,
			"y": 519.3515442917119,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 94.11764705882365,
			"height": 57.64705882352939,
			"seed": 1093665493,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "egeZIM0h",
				"focus": -0.7364161902763566,
				"gap": 4.705882352940989
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-94.11764705882365,
					-57.64705882352939
				]
			]
		},
		{
			"type": "text",
			"version": 106,
			"versionNonce": 1774753691,
			"isDeleted": false,
			"id": "JVRgH9yU",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2233.245614173354,
			"y": 388.7633089975944,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 476.5794677734375,
			"height": 50,
			"seed": 96910651,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "elA_vy7WiyxkVvqEyPqCT",
					"type": "arrow"
				}
			],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "the task of assinging objects to one of several\npredefined categories",
			"rawText": "the task of assinging objects to one of several\npredefined categories",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "the task of assinging objects to one of several\npredefined categories",
			"lineHeight": 1.25,
			"baseline": 43
		},
		{
			"type": "arrow",
			"version": 367,
			"versionNonce": 1717732245,
			"isDeleted": false,
			"id": "elA_vy7WiyxkVvqEyPqCT",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2235.531905751308,
			"y": 388.2072487486049,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 46.059102780960075,
			"height": 2.4715119215182426,
			"seed": 1946482133,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "JVRgH9yU",
				"focus": 0.5479299756176947,
				"gap": 2.3529411764698125
			},
			"endBinding": {
				"elementId": "1JUzxw5F",
				"focus": -0.811577938378025,
				"gap": 14.117647058823565
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-46.059102780960075,
					-2.4715119215182426
				]
			]
		},
		{
			"type": "text",
			"version": 642,
			"versionNonce": 162065467,
			"isDeleted": false,
			"id": "1JUzxw5F",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2939.127967114529,
			"y": 360.52801487994714,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 643.4193115234375,
			"height": 225,
			"seed": 391210299,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "elA_vy7WiyxkVvqEyPqCT",
					"type": "arrow"
				}
			],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Given a collection of records(training set)\nEach record contains a set of attributes,\nof it's attribute is the class.\nFind a model for the class attribute as a function\nof the values of other attributes.\nThe goals is to assign previously unseen record to a class\nas accurately as possible.\n\nWe can use a test set to determine the accuracy of the model.",
			"rawText": "Given a collection of records(training set)\nEach record contains a set of attributes,\nof it's attribute is the class.\nFind a model for the class attribute as a function\nof the values of other attributes.\nThe goals is to assign previously unseen record to a class\nas accurately as possible.\n\nWe can use a test set to determine the accuracy of the model.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Given a collection of records(training set)\nEach record contains a set of attributes,\nof it's attribute is the class.\nFind a model for the class attribute as a function\nof the values of other attributes.\nThe goals is to assign previously unseen record to a class\nas accurately as possible.\n\nWe can use a test set to determine the accuracy of the model.",
			"lineHeight": 1.25,
			"baseline": 218
		},
		{
			"type": "rectangle",
			"version": 70,
			"versionNonce": 1926711541,
			"isDeleted": false,
			"id": "98pKzV_9NpXIUePvBSl1s",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2790.8926729968853,
			"y": 656.9986031152409,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 157.64705882352928,
			"height": 130.58823529411757,
			"seed": 499402069,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"id": "llBnJhUfwDjjLuhUI6tsO",
					"type": "arrow"
				}
			],
			"updated": 1698072187859,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 119,
			"versionNonce": 1070968027,
			"isDeleted": false,
			"id": "qf3rs3eV",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2773.2456141733564,
			"y": 672.2927207622998,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 131.1598358154297,
			"height": 100,
			"seed": 1624824437,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "BaJs4sfv1vaWu3NFVumMJ",
					"type": "arrow"
				}
			],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Classification\nmodel\n/target\nfunction",
			"rawText": "Classification\nmodel\n/target\nfunction",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Classification\nmodel\n/target\nfunction",
			"lineHeight": 1.25,
			"baseline": 93
		},
		{
			"type": "text",
			"version": 89,
			"versionNonce": 323773013,
			"isDeleted": false,
			"id": "UlVCn88k",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3023.8338494674736,
			"y": 669.9397795858292,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 135.55984497070312,
			"height": 100,
			"seed": 1679602229,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "llBnJhUfwDjjLuhUI6tsO",
					"type": "arrow"
				}
			],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Input\n\nAttribute set\n    (X)",
			"rawText": "Input\n\nAttribute set\n    (X)",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Input\n\nAttribute set\n    (X)",
			"lineHeight": 1.25,
			"baseline": 93
		},
		{
			"type": "arrow",
			"version": 62,
			"versionNonce": 1608604027,
			"isDeleted": false,
			"id": "llBnJhUfwDjjLuhUI6tsO",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2874.422084761591,
			"y": 725.233897232888,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 72.94117647058829,
			"height": 1.176470588235361,
			"seed": 1949195189,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "UlVCn88k",
				"focus": 0.0778474066795747,
				"gap": 13.851919735179308
			},
			"endBinding": {
				"elementId": "98pKzV_9NpXIUePvBSl1s",
				"focus": -0.08352337514253436,
				"gap": 10.588235294117794
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					72.94117647058829,
					1.176470588235361
				]
			]
		},
		{
			"type": "text",
			"version": 112,
			"versionNonce": 211242933,
			"isDeleted": false,
			"id": "0GfTRQrG",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2506.1867906439443,
			"y": 660.5280148799467,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 108.15986633300781,
			"height": 100,
			"seed": 2600469,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "BaJs4sfv1vaWu3NFVumMJ",
					"type": "arrow"
				}
			],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Output\n\nClass label\n    (Y)",
			"rawText": "Output\n\nClass label\n    (Y)",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Output\n\nClass label\n    (Y)",
			"lineHeight": 1.25,
			"baseline": 93
		},
		{
			"type": "arrow",
			"version": 355,
			"versionNonce": 655258139,
			"isDeleted": false,
			"id": "BaJs4sfv1vaWu3NFVumMJ",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2626.186790643944,
			"y": 727.8454381535516,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 110.58823529411757,
			"height": 1.2679088522941129,
			"seed": 1394764251,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "qf3rs3eV",
				"focus": 0.12781563128801643,
				"gap": 15.898987713982933
			},
			"endBinding": {
				"elementId": "0GfTRQrG",
				"focus": -0.30267806131501407,
				"gap": 9.411764705881978
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					110.58823529411757,
					-1.2679088522941129
				]
			]
		},
		{
			"type": "arrow",
			"version": 64,
			"versionNonce": 1826459925,
			"isDeleted": false,
			"id": "sK-NJcnTgeNm_ENqWwRp-",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2749.7162024086524,
			"y": 840.5280148799467,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 34.11764705882342,
			"height": 96.47058823529414,
			"seed": 1355523573,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-34.11764705882342,
					96.47058823529414
				]
			]
		},
		{
			"type": "text",
			"version": 850,
			"versionNonce": 105871035,
			"isDeleted": false,
			"id": "PH5hVfRp",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3028.539731820417,
			"y": 991.1162501740642,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 871.9190673828125,
			"height": 350,
			"seed": 373112539,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "A classification model can be used for the following things\n    - Discriptive modelling\n        -> A model can serve as an explanatory tool to\n           Distinguish betweeen objects of different classes\n                -> classifying creditcard transactions as legitimate or fruadulant\n    - Predictive modelling\n        -> A model can also be used to predict a class label of unknown records.\n            -> Predicting tumor cells as benign or malignant\n\n\nClassification techniques are most suited for predicting or desribing data sets \nwith binary or nominal categories. They are less effective for ordinal categories(e.g to \nclassify a person as a member of high, medium, or low, income group) because\nthey do no consider the implicit order among categories.  ",
			"rawText": "A classification model can be used for the following things\n    - Discriptive modelling\n        -> A model can serve as an explanatory tool to\n           Distinguish betweeen objects of different classes\n                -> classifying creditcard transactions as legitimate or fruadulant\n    - Predictive modelling\n        -> A model can also be used to predict a class label of unknown records.\n            -> Predicting tumor cells as benign or malignant\n\n\nClassification techniques are most suited for predicting or desribing data sets \nwith binary or nominal categories. They are less effective for ordinal categories(e.g to \nclassify a person as a member of high, medium, or low, income group) because\nthey do no consider the implicit order among categories.  ",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "A classification model can be used for the following things\n    - Discriptive modelling\n        -> A model can serve as an explanatory tool to\n           Distinguish betweeen objects of different classes\n                -> classifying creditcard transactions as legitimate or fruadulant\n    - Predictive modelling\n        -> A model can also be used to predict a class label of unknown records.\n            -> Predicting tumor cells as benign or malignant\n\n\nClassification techniques are most suited for predicting or desribing data sets \nwith binary or nominal categories. They are less effective for ordinal categories(e.g to \nclassify a person as a member of high, medium, or low, income group) because\nthey do no consider the implicit order among categories.  ",
			"lineHeight": 1.25,
			"baseline": 343
		},
		{
			"type": "arrow",
			"version": 81,
			"versionNonce": 1637131893,
			"isDeleted": false,
			"id": "-ZaQF7u4J3yQlRF-6AYH-",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1775.5985553498297,
			"y": 540.5280148799468,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0,
			"height": 216.47058823529403,
			"seed": 556561563,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "egeZIM0h",
				"focus": 0.1927227395270116,
				"gap": 4.411764705881978
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					0,
					216.47058823529403
				]
			]
		},
		{
			"type": "text",
			"version": 861,
			"versionNonce": 742844251,
			"isDeleted": false,
			"id": "xkqUpmHV",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1835.5985553498297,
			"y": 796.9986031152408,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 748.21923828125,
			"height": 400,
			"seed": 1343823323,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Solving a classification problem and the structure of a model\n\nA classification technique(or classifier) is a systematic approach to \nbuilding classification models from in input data set.\n    -> examples: Decision tree classifiers, rule-based classifiers, etc\n\nEach technique employs a learning algorithm to identify a model\nthat best fits the relationship between the attribute set and the \nclass label of the data.\n\nThe model generated by a learning algorithm should both\n    1. fithe the input data well\n    2. correctly predict the class labels of recrods it has never seen.\n\nTherefore a key objective of learning algorithm is to build models with good\ngeneralization capability. Example: ",
			"rawText": "Solving a classification problem and the structure of a model\n\nA classification technique(or classifier) is a systematic approach to \nbuilding classification models from in input data set.\n    -> examples: Decision tree classifiers, rule-based classifiers, etc\n\nEach technique employs a learning algorithm to identify a model\nthat best fits the relationship between the attribute set and the \nclass label of the data.\n\nThe model generated by a learning algorithm should both\n    1. fithe the input data well\n    2. correctly predict the class labels of recrods it has never seen.\n\nTherefore a key objective of learning algorithm is to build models with good\ngeneralization capability. Example: ",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Solving a classification problem and the structure of a model\n\nA classification technique(or classifier) is a systematic approach to \nbuilding classification models from in input data set.\n    -> examples: Decision tree classifiers, rule-based classifiers, etc\n\nEach technique employs a learning algorithm to identify a model\nthat best fits the relationship between the attribute set and the \nclass label of the data.\n\nThe model generated by a learning algorithm should both\n    1. fithe the input data well\n    2. correctly predict the class labels of recrods it has never seen.\n\nTherefore a key objective of learning algorithm is to build models with good\ngeneralization capability. Example: ",
			"lineHeight": 1.25,
			"baseline": 393
		},
		{
			"type": "image",
			"version": 185,
			"versionNonce": 1300369365,
			"isDeleted": false,
			"id": "DeUPkkUWIWWeGDg0gIWsJ",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1840.127967114535,
			"y": 1212.5868384093583,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 449.05882352941177,
			"height": 261.0807113543092,
			"seed": 1638702171,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "5e61fa7a5df830262b1dab6673ca73dd70f30b5a",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "text",
			"version": 359,
			"versionNonce": 1330070523,
			"isDeleted": false,
			"id": "xX5tyrKh",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1828.480908291006,
			"y": 1512.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 729.6192626953125,
			"height": 125,
			"seed": 237075861,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Evaluation of the performance of a classification model is based on the \ncounts of tests records correctly and incorrectly predicted by the model.\nThese counts in a table are called a confusion matrix.\nFor binary attributes it looks like this:\n",
			"rawText": "Evaluation of the performance of a classification model is based on the \ncounts of tests records correctly and incorrectly predicted by the model.\nThese counts in a table are called a confusion matrix.\nFor binary attributes it looks like this:\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Evaluation of the performance of a classification model is based on the \ncounts of tests records correctly and incorrectly predicted by the model.\nThese counts in a table are called a confusion matrix.\nFor binary attributes it looks like this:\n",
			"lineHeight": 1.25,
			"baseline": 118
		},
		{
			"type": "image",
			"version": 115,
			"versionNonce": 515591477,
			"isDeleted": false,
			"id": "-lEdmVBLk8pJ335cWPnyh",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1823.980908291006,
			"y": 1618.580302461647,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 457,
			"height": 118,
			"seed": 966586651,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "6fdf91abb7a80680b3dd73fc49c2571107eef0de",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "text",
			"version": 71,
			"versionNonce": 928189595,
			"isDeleted": false,
			"id": "ZY4WEBzh",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1818.480908291006,
			"y": 1759.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 451.39947509765625,
			"height": 50,
			"seed": 1364090587,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "From this we can make the following formula's\n",
			"rawText": "From this we can make the following formula's\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "From this we can make the following formula's\n",
			"lineHeight": 1.25,
			"baseline": 43
		},
		{
			"type": "text",
			"version": 54,
			"versionNonce": 1688592021,
			"isDeleted": false,
			"id": "Df5GmAA9",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1809.480908291006,
			"y": 1882.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 118.4798583984375,
			"height": 25,
			"seed": 1268268117,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "accuracy = ",
			"rawText": "accuracy = ",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "accuracy = ",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 60,
			"versionNonce": 136102203,
			"isDeleted": false,
			"id": "OGH2Eqzf",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1667.480908291006,
			"y": 1860.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 290.15966796875,
			"height": 25,
			"seed": 637036507,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Number of correct predictions",
			"rawText": "Number of correct predictions",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Number of correct predictions",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "line",
			"version": 155,
			"versionNonce": 636961781,
			"isDeleted": false,
			"id": "1FQmDCb9x9FoSIFzI9oDb",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1667.480908291006,
			"y": 1892.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 287,
			"height": 4,
			"seed": 1654485403,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					287,
					-4
				]
			]
		},
		{
			"type": "text",
			"version": 93,
			"versionNonce": 1258742235,
			"isDeleted": false,
			"id": "KEH8rdRP",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1665.480908291006,
			"y": 1904.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 273.0796813964844,
			"height": 25,
			"seed": 2024287701,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187859,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Total number of predictions",
			"rawText": "Total number of predictions",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Total number of predictions",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 49,
			"versionNonce": 1991572821,
			"isDeleted": false,
			"id": "Jftf2xy6",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1824.480908291006,
			"y": 1978.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 126.87983703613281,
			"height": 25,
			"seed": 542011131,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Error rate =",
			"rawText": "Error rate =",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Error rate =",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 46,
			"versionNonce": 958656123,
			"isDeleted": false,
			"id": "ewdUVWeJ",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1658.480908291006,
			"y": 1958.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 270.7796936035156,
			"height": 25,
			"seed": 870518069,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Number of wrong predictions",
			"rawText": "Number of wrong predictions",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Number of wrong predictions",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "line",
			"version": 137,
			"versionNonce": 1312066229,
			"isDeleted": false,
			"id": "_2pahGNTZC7kOt2CWds0J",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1661.480908291006,
			"y": 1988.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 279,
			"height": 4,
			"seed": 1033700821,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					279,
					-4
				]
			]
		},
		{
			"type": "text",
			"version": 63,
			"versionNonce": 1161193243,
			"isDeleted": false,
			"id": "OuqA5XMu",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1661.480908291006,
			"y": 1996.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 273.0796813964844,
			"height": 25,
			"seed": 76629019,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Total number of predictions",
			"rawText": "Total number of predictions",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Total number of predictions",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "arrow",
			"version": 546,
			"versionNonce": 488336405,
			"isDeleted": false,
			"id": "R04GY2No0-0tIAVeAV7j3",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1833.4809082910062,
			"y": 540.5803024616473,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 633.9999999999998,
			"height": 1062.9999999999998,
			"seed": 1996303451,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "egeZIM0h",
				"focus": 0.9566580708882676,
				"gap": 4.941176470593064
			},
			"endBinding": {
				"elementId": "VP7pSpLF",
				"focus": 0.452301309180498,
				"gap": 12.820144653320312
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-277.9999999999998,
					1032.9999999999998
				],
				[
					-633.9999999999998,
					1062.9999999999998
				]
			]
		},
		{
			"type": "text",
			"version": 139,
			"versionNonce": 1706085307,
			"isDeleted": false,
			"id": "VP7pSpLF",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2613.480908291006,
			"y": 1589.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 133.1798553466797,
			"height": 25,
			"seed": 415043739,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "R04GY2No0-0tIAVeAV7j3",
					"type": "arrow"
				},
				{
					"id": "99NUe8TydoNJzv6QL_mMh",
					"type": "arrow"
				},
				{
					"id": "WE_wUzTrwR3xHnnVIx075",
					"type": "arrow"
				},
				{
					"id": "jWPGGXjJsGLQDlxzYU4Ms",
					"type": "arrow"
				}
			],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Decision Tree",
			"rawText": "Decision Tree",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Decision Tree",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "arrow",
			"version": 699,
			"versionNonce": 593437045,
			"isDeleted": false,
			"id": "99NUe8TydoNJzv6QL_mMh",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2622.480908291006,
			"y": 1606.1667529837277,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 234.50009155273438,
			"height": 21.049110683389927,
			"seed": 1750284917,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "VP7pSpLF",
				"focus": -0.5883745180772337,
				"gap": 9
			},
			"endBinding": {
				"elementId": "TdlNZOM5",
				"focus": -0.6409628623769306,
				"gap": 10.140472412109375
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-234.50009155273438,
					-21.049110683389927
				]
			]
		},
		{
			"type": "text",
			"version": 484,
			"versionNonce": 515218523,
			"isDeleted": false,
			"id": "TdlNZOM5",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3408.480908291006,
			"y": 1539.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 541.3594360351562,
			"height": 200,
			"seed": 20657685,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "99NUe8TydoNJzv6QL_mMh",
					"type": "arrow"
				}
			],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "In a decision tree we have 3 types of nodes\n    1. A root node that has no incoming edges\n      and zero or more outgoing edges\n    2. Internal nodes, each of which has exectly\n       one incoming edge and two or more outgoing \n       edges\n    3. Leaf/Terminal nodes, each of which has exactly\n       one incoming edge and no outgoing edges.",
			"rawText": "In a decision tree we have 3 types of nodes\n    1. A root node that has no incoming edges\n      and zero or more outgoing edges\n    2. Internal nodes, each of which has exectly\n       one incoming edge and two or more outgoing \n       edges\n    3. Leaf/Terminal nodes, each of which has exactly\n       one incoming edge and no outgoing edges.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "In a decision tree we have 3 types of nodes\n    1. A root node that has no incoming edges\n      and zero or more outgoing edges\n    2. Internal nodes, each of which has exectly\n       one incoming edge and two or more outgoing \n       edges\n    3. Leaf/Terminal nodes, each of which has exactly\n       one incoming edge and no outgoing edges.",
			"lineHeight": 1.25,
			"baseline": 193
		},
		{
			"type": "image",
			"version": 387,
			"versionNonce": 105196245,
			"isDeleted": false,
			"id": "bSIntkYvRqtEoHfcDAPEm",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3830.980908291006,
			"y": 1540.580302461647,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 405,
			"height": 258.6656671664168,
			"seed": 2077832245,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "mOqoG9qb0NI0268bt2i0B",
					"type": "arrow"
				}
			],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "69620052757fee73f215796302d9c1fd98832315",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "arrow",
			"version": 62,
			"versionNonce": 1276598523,
			"isDeleted": false,
			"id": "mOqoG9qb0NI0268bt2i0B",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3661.480908291006,
			"y": 1822.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 1,
			"height": 144,
			"seed": 158724891,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "bSIntkYvRqtEoHfcDAPEm",
				"focus": 0.16745574896786622,
				"gap": 23.334332833583176
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					1,
					144
				]
			]
		},
		{
			"type": "text",
			"version": 389,
			"versionNonce": 644024373,
			"isDeleted": false,
			"id": "QPG7dG0B",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3833.480908291006,
			"y": 2006.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 672.8992919921875,
			"height": 175,
			"seed": 1275244501,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "In a decision tree, each leaf node is assigned a class label.\n(Non-mamal, mammal). The non-terminal nodes, which include\nthe root and internal nodes contain attribute test\nconditions to separate records that have different characteristics\n\nClassifying a test record is straigtforward once a decision tree is \nconstructed",
			"rawText": "In a decision tree, each leaf node is assigned a class label.\n(Non-mamal, mammal). The non-terminal nodes, which include\nthe root and internal nodes contain attribute test\nconditions to separate records that have different characteristics\n\nClassifying a test record is straigtforward once a decision tree is \nconstructed",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "In a decision tree, each leaf node is assigned a class label.\n(Non-mamal, mammal). The non-terminal nodes, which include\nthe root and internal nodes contain attribute test\nconditions to separate records that have different characteristics\n\nClassifying a test record is straigtforward once a decision tree is \nconstructed",
			"lineHeight": 1.25,
			"baseline": 168
		},
		{
			"type": "arrow",
			"version": 58,
			"versionNonce": 727220635,
			"isDeleted": false,
			"id": "WE_wUzTrwR3xHnnVIx075",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2555.480908291006,
			"y": 1628.5803024616473,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 11,
			"height": 188.99999999999977,
			"seed": 633603291,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "VP7pSpLF",
				"focus": 0.15051457066811194,
				"gap": 14.000000000000227
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					11,
					188.99999999999977
				]
			]
		},
		{
			"type": "text",
			"version": 970,
			"versionNonce": 899561877,
			"isDeleted": false,
			"id": "Me5jFI4r",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2646.480908291006,
			"y": 1844.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 728.379150390625,
			"height": 550,
			"seed": 926989461,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Building a decision tree\nWe will use hunts algorithm for building a decision tree\n\nIn Hunt's algorithm, a decision tree is grown in a recursive fashion\nby partitioning the training records into successively purer subets.\n\n\nLet D_t be the set of training records that are associated with node \nt and y = {y_1, y_2, ..., y_c} be the class labels.\n\nStep 1\n    If all the records in D_t belong to the same class y_t, then t is a\n    leaf node labeld by y_t\n\nStep 2\n    If D_t contains records that belong to more than one class\n    an attribute test condition is selected to partion the records\n    into smaller subsets. A child node is created for each outcome\n    of the test condition and the records D_t are distrubted to\n    the childres based on the outcomes. Then we recusrively apply\n    the the child nodes.\n",
			"rawText": "Building a decision tree\nWe will use hunts algorithm for building a decision tree\n\nIn Hunt's algorithm, a decision tree is grown in a recursive fashion\nby partitioning the training records into successively purer subets.\n\n\nLet D_t be the set of training records that are associated with node \nt and y = {y_1, y_2, ..., y_c} be the class labels.\n\nStep 1\n    If all the records in D_t belong to the same class y_t, then t is a\n    leaf node labeld by y_t\n\nStep 2\n    If D_t contains records that belong to more than one class\n    an attribute test condition is selected to partion the records\n    into smaller subsets. A child node is created for each outcome\n    of the test condition and the records D_t are distrubted to\n    the childres based on the outcomes. Then we recusrively apply\n    the the child nodes.\n",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Building a decision tree\nWe will use hunts algorithm for building a decision tree\n\nIn Hunt's algorithm, a decision tree is grown in a recursive fashion\nby partitioning the training records into successively purer subets.\n\n\nLet D_t be the set of training records that are associated with node \nt and y = {y_1, y_2, ..., y_c} be the class labels.\n\nStep 1\n    If all the records in D_t belong to the same class y_t, then t is a\n    leaf node labeld by y_t\n\nStep 2\n    If D_t contains records that belong to more than one class\n    an attribute test condition is selected to partion the records\n    into smaller subsets. A child node is created for each outcome\n    of the test condition and the records D_t are distrubted to\n    the childres based on the outcomes. Then we recusrively apply\n    the the child nodes.\n",
			"lineHeight": 1.25,
			"baseline": 543
		},
		{
			"type": "image",
			"version": 102,
			"versionNonce": 632002107,
			"isDeleted": false,
			"id": "wXPFS2lLSu7vw8CA7sNbH",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2648.480908291006,
			"y": 2391.080302461647,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 402,
			"height": 269,
			"seed": 232173371,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "34ab65bc562632b6da6ec9cf2daafa558a218571",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "text",
			"version": 580,
			"versionNonce": 221003509,
			"isDeleted": false,
			"id": "r5Ox1p4X",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2655.480908291006,
			"y": 2721.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 780.1591796875,
			"height": 275,
			"seed": 1959862581,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Step 1.\nWe check wether all records in D_t belong to the same class.\nIn our case the class \"Defaulted borrower\" has the values\nYes and No. As we can see not all records belong to the same step.\n\nStep 2.\nThere are records belonging to more than one class. We apply an attribute\ntest condition to partitions the records into smaller subsets.\n\nSo, we look at the class attribute and we see most people do not borrow any\nmoney, emaning we get a tree that looks like: ",
			"rawText": "Step 1.\nWe check wether all records in D_t belong to the same class.\nIn our case the class \"Defaulted borrower\" has the values\nYes and No. As we can see not all records belong to the same step.\n\nStep 2.\nThere are records belonging to more than one class. We apply an attribute\ntest condition to partitions the records into smaller subsets.\n\nSo, we look at the class attribute and we see most people do not borrow any\nmoney, emaning we get a tree that looks like: ",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Step 1.\nWe check wether all records in D_t belong to the same class.\nIn our case the class \"Defaulted borrower\" has the values\nYes and No. As we can see not all records belong to the same step.\n\nStep 2.\nThere are records belonging to more than one class. We apply an attribute\ntest condition to partitions the records into smaller subsets.\n\nSo, we look at the class attribute and we see most people do not borrow any\nmoney, emaning we get a tree that looks like: ",
			"lineHeight": 1.25,
			"baseline": 268
		},
		{
			"type": "rectangle",
			"version": 131,
			"versionNonce": 1509103323,
			"isDeleted": false,
			"id": "tuo_JpIQKsXOykScDgR3h",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2516.480908291006,
			"y": 3023.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 310,
			"height": 35,
			"seed": 1340810235,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "iFYtCxfB"
				}
			],
			"updated": 1698072187860,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 67,
			"versionNonce": 1133680725,
			"isDeleted": false,
			"id": "iFYtCxfB",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2437.7808197900295,
			"y": 3028.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 152.59982299804688,
			"height": 25,
			"seed": 1858128443,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Defualted = no",
			"rawText": "Defualted = no",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "tuo_JpIQKsXOykScDgR3h",
			"originalText": "Defualted = no",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 255,
			"versionNonce": 1723958139,
			"isDeleted": false,
			"id": "fsXD7QlN",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2665.480908291006,
			"y": 3094.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 900.7589721679688,
			"height": 75,
			"seed": 1094618837,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "The tree however needs to be refined since the root node contains records from\nboth classes. The croeds are subs1uently divided into smaller subsets based the outcomes\nof home owner test condition: ",
			"rawText": "The tree however needs to be refined since the root node contains records from\nboth classes. The croeds are subs1uently divided into smaller subsets based the outcomes\nof home owner test condition: ",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "The tree however needs to be refined since the root node contains records from\nboth classes. The croeds are subs1uently divided into smaller subsets based the outcomes\nof home owner test condition: ",
			"lineHeight": 1.25,
			"baseline": 68
		},
		{
			"type": "ellipse",
			"version": 210,
			"versionNonce": 44484021,
			"isDeleted": false,
			"id": "8ceJelvOjwdQCrKeEY__q",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2397.480908291006,
			"y": 3190.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 151,
			"height": 119,
			"seed": 1252037467,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "KcNoEToT"
				}
			],
			"updated": 1698072187860,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 110,
			"versionNonce": 1952013339,
			"isDeleted": false,
			"id": "KcNoEToT",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2370.217422968344,
			"y": 3237.5074489810477,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 96.69990539550781,
			"height": 25,
			"seed": 1374732347,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "homeowner",
			"rawText": "homeowner",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "8ceJelvOjwdQCrKeEY__q",
			"originalText": "homeowner",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "rectangle",
			"version": 234,
			"versionNonce": 495863573,
			"isDeleted": false,
			"id": "DpknkLDCtu_1BJzz0NXFZ",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2659.480908291006,
			"y": 3408.080302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 310,
			"height": 35,
			"seed": 400287547,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "qo1BOswW"
				}
			],
			"updated": 1698072187860,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 170,
			"versionNonce": 2125275323,
			"isDeleted": false,
			"id": "qo1BOswW",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2580.7808197900295,
			"y": 3413.080302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 152.59982299804688,
			"height": 25,
			"seed": 603015131,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Defualted = no",
			"rawText": "Defualted = no",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "DpknkLDCtu_1BJzz0NXFZ",
			"originalText": "Defualted = no",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "line",
			"version": 131,
			"versionNonce": 1723767925,
			"isDeleted": false,
			"id": "ycwRrwjeobUB4UIrIcSCH",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2388.480908291006,
			"y": 3274.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 125,
			"height": 130,
			"seed": 259989,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					-125,
					130
				]
			]
		},
		{
			"type": "rectangle",
			"version": 343,
			"versionNonce": 1600082267,
			"isDeleted": false,
			"id": "g4nFG3oFB9UWi4zR9vGZK",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2248.480908291006,
			"y": 3406.080302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 310,
			"height": 35,
			"seed": 1997988021,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "94dxrmCh"
				}
			],
			"updated": 1698072187860,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 277,
			"versionNonce": 1174226389,
			"isDeleted": false,
			"id": "94dxrmCh",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2169.7808197900295,
			"y": 3411.080302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 152.59982299804688,
			"height": 25,
			"seed": 1665335829,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Defualted = no",
			"rawText": "Defualted = no",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "g4nFG3oFB9UWi4zR9vGZK",
			"originalText": "Defualted = no",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "line",
			"version": 149,
			"versionNonce": 398618107,
			"isDeleted": false,
			"id": "cKjRH-UjhD5ME6E8j_ozs",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2250.480908291006,
			"y": 3271.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 166,
			"height": 135,
			"seed": 1637307963,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					166,
					135
				]
			]
		},
		{
			"type": "text",
			"version": 68,
			"versionNonce": 241156917,
			"isDeleted": false,
			"id": "MJuRbcWS",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2487.480908291006,
			"y": 3307.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 32.119964599609375,
			"height": 25,
			"seed": 1614722165,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Yes",
			"rawText": "Yes",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Yes",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 18,
			"versionNonce": 1524168347,
			"isDeleted": false,
			"id": "COMSCsYg",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2153.480908291006,
			"y": 3299.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 23.959976196289062,
			"height": 25,
			"seed": 213795573,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "No",
			"rawText": "No",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "No",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 253,
			"versionNonce": 340497557,
			"isDeleted": false,
			"id": "71jLSy0k",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2637.480908291006,
			"y": 3500.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 899.2191162109375,
			"height": 100,
			"seed": 2126961851,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Notice that all borrowers who are homeowners successfully repaid their loans. This means \nthat the left child of the root is a leaf node.(step 1)\n\nNow we need to continue on the right child",
			"rawText": "Notice that all borrowers who are homeowners successfully repaid their loans. This means \nthat the left child of the root is a leaf node.(step 1)\n\nNow we need to continue on the right child",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Notice that all borrowers who are homeowners successfully repaid their loans. This means \nthat the left child of the root is a leaf node.(step 1)\n\nNow we need to continue on the right child",
			"lineHeight": 1.25,
			"baseline": 93
		},
		{
			"type": "ellipse",
			"version": 288,
			"versionNonce": 1465215803,
			"isDeleted": false,
			"id": "kOV7W6L7zT2ZAZdQPNo9i",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2442.2458640725836,
			"y": 3633.330302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 151,
			"height": 119,
			"seed": 1638205813,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "HV9uBIzO"
				}
			],
			"updated": 1698072187860,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 189,
			"versionNonce": 58079733,
			"isDeleted": false,
			"id": "HV9uBIzO",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2414.9823787499217,
			"y": 3680.2574489810477,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 96.69990539550781,
			"height": 25,
			"seed": 1401819861,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "homeowner",
			"rawText": "homeowner",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "kOV7W6L7zT2ZAZdQPNo9i",
			"originalText": "homeowner",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "line",
			"version": 209,
			"versionNonce": 1100631003,
			"isDeleted": false,
			"id": "ruFLC5O7aChg16l05X4UR",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2433.2458640725836,
			"y": 3717.330302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 125,
			"height": 130,
			"seed": 709816373,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					-125,
					130
				]
			]
		},
		{
			"type": "line",
			"version": 227,
			"versionNonce": 1961177941,
			"isDeleted": false,
			"id": "Z6vx1bAIrdDeYDEy475Js",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2295.2458640725836,
			"y": 3714.330302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 166,
			"height": 135,
			"seed": 1361543253,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					166,
					135
				]
			]
		},
		{
			"type": "text",
			"version": 146,
			"versionNonce": 498735227,
			"isDeleted": false,
			"id": "h2MevZXA",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2532.2458640725836,
			"y": 3750.330302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 32.119964599609375,
			"height": 25,
			"seed": 1566485941,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Yes",
			"rawText": "Yes",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Yes",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 96,
			"versionNonce": 1156448437,
			"isDeleted": false,
			"id": "rLOPOVTi",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2198.2458640725836,
			"y": 3742.330302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 23.959976196289062,
			"height": 25,
			"seed": 688467733,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187860,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "No",
			"rawText": "No",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "No",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "rectangle",
			"version": 318,
			"versionNonce": 1232556315,
			"isDeleted": false,
			"id": "zIrNJHvotqKzCpA6QwZ51",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2726.480908291006,
			"y": 3849.080302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 310,
			"height": 35,
			"seed": 544205979,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "SPDADMDP"
				}
			],
			"updated": 1698072187861,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 254,
			"versionNonce": 691413525,
			"isDeleted": false,
			"id": "SPDADMDP",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2647.7808197900295,
			"y": 3854.080302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 152.59982299804688,
			"height": 25,
			"seed": 2057150779,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Defualted = no",
			"rawText": "Defualted = no",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "zIrNJHvotqKzCpA6QwZ51",
			"originalText": "Defualted = no",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "ellipse",
			"version": 351,
			"versionNonce": 1178891707,
			"isDeleted": false,
			"id": "OGUH_rwvM9TO3NEABAEjN",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2183.980908291006,
			"y": 3842.080302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 151,
			"height": 119,
			"seed": 1816387675,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "AvxfH1si"
				}
			],
			"updated": 1698072187861,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 271,
			"versionNonce": 112400245,
			"isDeleted": false,
			"id": "AvxfH1si",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2144.137428766684,
			"y": 3876.5074489810477,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 71.5399169921875,
			"height": 50,
			"seed": 1463622907,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Marital\nstatus",
			"rawText": "Marital\nstatus",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "OGUH_rwvM9TO3NEABAEjN",
			"originalText": "Marital\nstatus",
			"lineHeight": 1.25,
			"baseline": 43
		},
		{
			"type": "line",
			"version": 75,
			"versionNonce": 1128531547,
			"isDeleted": false,
			"id": "_42Dc1Pl7X_5DuZ7ivUAO",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2044.480908291006,
			"y": 3940.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 130.99999999999977,
			"height": 93,
			"seed": 1674630971,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					130.99999999999977,
					93
				]
			]
		},
		{
			"type": "text",
			"version": 20,
			"versionNonce": 128606421,
			"isDeleted": false,
			"id": "HHNEMte3",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1979.480908291006,
			"y": 3948.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 69.89991760253906,
			"height": 25,
			"seed": 573357621,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "married",
			"rawText": "married",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "married",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "line",
			"version": 94,
			"versionNonce": 1732805371,
			"isDeleted": false,
			"id": "9jXQ196SU4h1XmAFYaOYZ",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2160.480908291006,
			"y": 3946.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 76,
			"height": 109,
			"seed": 2090039605,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					-76,
					109
				]
			]
		},
		{
			"type": "text",
			"version": 49,
			"versionNonce": 1907457589,
			"isDeleted": false,
			"id": "Gk6E0rEQ",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2292.480908291006,
			"y": 3949.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 88.17991638183594,
			"height": 50,
			"seed": 1916384373,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "{single,\ndivorced}",
			"rawText": "{single,\ndivorced}",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "{single,\ndivorced}",
			"lineHeight": 1.25,
			"baseline": 43
		},
		{
			"type": "rectangle",
			"version": 387,
			"versionNonce": 1523870619,
			"isDeleted": false,
			"id": "xorVDa9MwhG0MKz4P-XHb",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1964.480908291006,
			"y": 4035.080302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 310,
			"height": 35,
			"seed": 1265162331,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "xghichcB"
				}
			],
			"updated": 1698072187861,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 323,
			"versionNonce": 1001254805,
			"isDeleted": false,
			"id": "xghichcB",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1885.7808197900295,
			"y": 4040.080302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 152.59982299804688,
			"height": 25,
			"seed": 1996690683,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Defualted = no",
			"rawText": "Defualted = no",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "xorVDa9MwhG0MKz4P-XHb",
			"originalText": "Defualted = no",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "rectangle",
			"version": 434,
			"versionNonce": 303710267,
			"isDeleted": false,
			"id": "QTbt3ssaTW175l8RfPO8V",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2432.480908291006,
			"y": 4054.080302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 310,
			"height": 35,
			"seed": 634402139,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "eGZBz2Dw"
				}
			],
			"updated": 1698072187861,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 377,
			"versionNonce": 1674917109,
			"isDeleted": false,
			"id": "eGZBz2Dw",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2359.160809414053,
			"y": 4059.080302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 163.35980224609375,
			"height": 25,
			"seed": 645321211,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Defualted = yes",
			"rawText": "Defualted = yes",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "QTbt3ssaTW175l8RfPO8V",
			"originalText": "Defualted = yes",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 18,
			"versionNonce": 1459388635,
			"isDeleted": false,
			"id": "Q3QgOimX",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2657.480908291006,
			"y": 4217.580302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 128.47987365722656,
			"height": 25,
			"seed": 1485659861,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "And we go on",
			"rawText": "And we go on",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "And we go on",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "ellipse",
			"version": 402,
			"versionNonce": 95211093,
			"isDeleted": false,
			"id": "xbXCiRt-bCJwQa9kvUjzE",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2451.2458640725836,
			"y": 4311.705302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 151,
			"height": 119,
			"seed": 381750651,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "TWGA1tMM"
				}
			],
			"updated": 1698072187861,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 303,
			"versionNonce": 319663483,
			"isDeleted": false,
			"id": "TWGA1tMM",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2423.9823787499217,
			"y": 4358.632448981048,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 96.69990539550781,
			"height": 25,
			"seed": 1339532827,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "homeowner",
			"rawText": "homeowner",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "xbXCiRt-bCJwQa9kvUjzE",
			"originalText": "homeowner",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "line",
			"version": 323,
			"versionNonce": 805977013,
			"isDeleted": false,
			"id": "lm-mG6NU05naRxFC4L__K",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2442.2458640725836,
			"y": 4395.705302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 125,
			"height": 130,
			"seed": 668084923,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					-125,
					130
				]
			]
		},
		{
			"type": "line",
			"version": 341,
			"versionNonce": 1502627355,
			"isDeleted": false,
			"id": "w69WS_niOxJJIXPkc4LOa",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2304.2458640725836,
			"y": 4392.705302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 166,
			"height": 135,
			"seed": 1934826331,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					166,
					135
				]
			]
		},
		{
			"type": "text",
			"version": 260,
			"versionNonce": 2064842005,
			"isDeleted": false,
			"id": "LVnkJNeb",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2541.2458640725836,
			"y": 4428.705302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 32.119964599609375,
			"height": 25,
			"seed": 1319958523,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Yes",
			"rawText": "Yes",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Yes",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 210,
			"versionNonce": 829868731,
			"isDeleted": false,
			"id": "K8RYQn84",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2207.2458640725836,
			"y": 4420.705302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 23.959976196289062,
			"height": 25,
			"seed": 669139099,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "No",
			"rawText": "No",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "No",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "rectangle",
			"version": 432,
			"versionNonce": 1581027957,
			"isDeleted": false,
			"id": "zKx0jGjn4eHj_cnboP79i",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2735.480908291006,
			"y": 4527.455302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 310,
			"height": 35,
			"seed": 145061179,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "oYAsrCyk"
				}
			],
			"updated": 1698072187861,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 368,
			"versionNonce": 526629723,
			"isDeleted": false,
			"id": "oYAsrCyk",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2656.7808197900295,
			"y": 4532.455302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 152.59982299804688,
			"height": 25,
			"seed": 542709211,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Defualted = no",
			"rawText": "Defualted = no",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "zKx0jGjn4eHj_cnboP79i",
			"originalText": "Defualted = no",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "ellipse",
			"version": 465,
			"versionNonce": 1179417557,
			"isDeleted": false,
			"id": "6kGZP5BG8g0VafE2C6Lzy",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2192.980908291006,
			"y": 4520.455302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 151,
			"height": 119,
			"seed": 235905659,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "VA5fo9pv"
				}
			],
			"updated": 1698072187861,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 385,
			"versionNonce": 1873385467,
			"isDeleted": false,
			"id": "VA5fo9pv",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2153.137428766684,
			"y": 4554.882448981048,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 71.5399169921875,
			"height": 50,
			"seed": 1787534107,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Marital\nstatus",
			"rawText": "Marital\nstatus",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "6kGZP5BG8g0VafE2C6Lzy",
			"originalText": "Marital\nstatus",
			"lineHeight": 1.25,
			"baseline": 43
		},
		{
			"type": "line",
			"version": 189,
			"versionNonce": 1800943925,
			"isDeleted": false,
			"id": "dYmRcdOeUnX1TztspafPy",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2053.480908291006,
			"y": 4618.955302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 130.99999999999977,
			"height": 93,
			"seed": 306151355,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					130.99999999999977,
					93
				]
			]
		},
		{
			"type": "text",
			"version": 134,
			"versionNonce": 1078648987,
			"isDeleted": false,
			"id": "2rlVi47C",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1988.480908291006,
			"y": 4626.955302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 69.89991760253906,
			"height": 25,
			"seed": 793628763,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "married",
			"rawText": "married",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "married",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "line",
			"version": 208,
			"versionNonce": 1724205717,
			"isDeleted": false,
			"id": "-Q471caqkzTwMwnrfLpfx",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2169.480908291006,
			"y": 4624.955302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 76,
			"height": 109,
			"seed": 59313403,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					-76,
					109
				]
			]
		},
		{
			"type": "text",
			"version": 163,
			"versionNonce": 1257903419,
			"isDeleted": false,
			"id": "sUcCEERJ",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2301.480908291006,
			"y": 4627.955302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 88.17991638183594,
			"height": 50,
			"seed": 1920185755,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "{single,\ndivorced}",
			"rawText": "{single,\ndivorced}",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "{single,\ndivorced}",
			"lineHeight": 1.25,
			"baseline": 43
		},
		{
			"type": "rectangle",
			"version": 501,
			"versionNonce": 155791349,
			"isDeleted": false,
			"id": "54wCv-q-dHZpGkSJprzJg",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1973.480908291006,
			"y": 4713.455302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 310,
			"height": 35,
			"seed": 1262504507,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "EWkUjOif"
				}
			],
			"updated": 1698072187861,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 437,
			"versionNonce": 1863955931,
			"isDeleted": false,
			"id": "EWkUjOif",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -1894.7808197900295,
			"y": 4718.455302461647,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 152.59982299804688,
			"height": 25,
			"seed": 1389447899,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Defualted = no",
			"rawText": "Defualted = no",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "54wCv-q-dHZpGkSJprzJg",
			"originalText": "Defualted = no",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "ellipse",
			"version": 496,
			"versionNonce": 1894345045,
			"isDeleted": false,
			"id": "oe0x4kaB5_kWZgUDRY7gG",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2344.327313519768,
			"y": 4722.897295925698,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 151,
			"height": 119,
			"seed": 1573207355,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "4T0BgrC7"
				}
			],
			"updated": 1698072187861,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 434,
			"versionNonce": 2075935355,
			"isDeleted": false,
			"id": "4T0BgrC7",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2299.5938498645864,
			"y": 4757.324442445099,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 61.75994873046875,
			"height": 50,
			"seed": 1312808411,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Annual\nincome",
			"rawText": "Annual\nincome",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "oe0x4kaB5_kWZgUDRY7gG",
			"originalText": "Annual\nincome",
			"lineHeight": 1.25,
			"baseline": 43
		},
		{
			"type": "line",
			"version": 80,
			"versionNonce": 1593538229,
			"isDeleted": false,
			"id": "6Mfml7mRYGACPzQ24iOI9",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2327.650842931531,
			"y": 4824.750237102169,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 85.88235294117658,
			"height": 108.23529411764684,
			"seed": 1127296027,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187861,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					-85.88235294117658,
					108.23529411764684
				]
			]
		},
		{
			"type": "text",
			"version": 23,
			"versionNonce": 967064347,
			"isDeleted": false,
			"id": "HxHh0eCR",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2446.4743723432957,
			"y": 4836.514942984521,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 60.89994812011719,
			"height": 25,
			"seed": 948237595,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "< 80k",
			"rawText": "< 80k",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "< 80k",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "rectangle",
			"version": 569,
			"versionNonce": 1311037461,
			"isDeleted": false,
			"id": "bB7imPeIb619xI5FBnKUI",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2700.2979017550597,
			"y": 4934.309060631581,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 310,
			"height": 35,
			"seed": 977921685,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "6WLtOrp5"
				}
			],
			"updated": 1698072187862,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 505,
			"versionNonce": 893657019,
			"isDeleted": false,
			"id": "6WLtOrp5",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2621.597813254083,
			"y": 4939.309060631581,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 152.59982299804688,
			"height": 25,
			"seed": 970607605,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Defualted = no",
			"rawText": "Defualted = no",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "bB7imPeIb619xI5FBnKUI",
			"originalText": "Defualted = no",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "line",
			"version": 124,
			"versionNonce": 1213926773,
			"isDeleted": false,
			"id": "BTDghe3lWlULk86N29gD0",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2210.0037841080016,
			"y": 4824.750237102169,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 107.05882352941171,
			"height": 91.76470588235225,
			"seed": 684609621,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"startBinding": null,
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": null,
			"points": [
				[
					0,
					0
				],
				[
					107.05882352941171,
					91.76470588235225
				]
			]
		},
		{
			"type": "rectangle",
			"version": 501,
			"versionNonce": 1220440155,
			"isDeleted": false,
			"id": "9CGg95Ok0bcNUXgKVz7OE",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2199.121431166825,
			"y": 4926.073766513934,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 310,
			"height": 35,
			"seed": 1162408533,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "hiZ5IoB4"
				}
			],
			"updated": 1698072187862,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 442,
			"versionNonce": 2095290069,
			"isDeleted": false,
			"id": "hiZ5IoB4",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2125.801332289872,
			"y": 4931.073766513934,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 163.35980224609375,
			"height": 25,
			"seed": 1887559605,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Defualted = yes",
			"rawText": "Defualted = yes",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "9CGg95Ok0bcNUXgKVz7OE",
			"originalText": "Defualted = yes",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 14,
			"versionNonce": 1709550843,
			"isDeleted": false,
			"id": "BeLjpv5d",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2161.7684899903543,
			"y": 4828.279648866875,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 70.83993530273438,
			"height": 25,
			"seed": 1154583061,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": ">= 80k",
			"rawText": ">= 80k",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": ">= 80k",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 700,
			"versionNonce": 374600757,
			"isDeleted": false,
			"id": "2rQwVrQa",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2677.062607637409,
			"y": 5097.691413572754,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 766.9391479492188,
			"height": 250,
			"seed": 2013963189,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Hunts algorithm will work if every comination of attribute values is present in\nthe training data and each combinaiton has a unique class label.\nThese assumptions are too stringent for most practical use-cases.\n\nThere are also 2 problems with hunt's algorithm:\n    1. How should the training records be split?\n    2. How should the splitting procedure stop?\n        A stopping condtition is needed to terminate the \n        tree growing process. A possible strategy is to keep\n        splitting untill all nodes have a valid class label.",
			"rawText": "Hunts algorithm will work if every comination of attribute values is present in\nthe training data and each combinaiton has a unique class label.\nThese assumptions are too stringent for most practical use-cases.\n\nThere are also 2 problems with hunt's algorithm:\n    1. How should the training records be split?\n    2. How should the splitting procedure stop?\n        A stopping condtition is needed to terminate the \n        tree growing process. A possible strategy is to keep\n        splitting untill all nodes have a valid class label.",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Hunts algorithm will work if every comination of attribute values is present in\nthe training data and each combinaiton has a unique class label.\nThese assumptions are too stringent for most practical use-cases.\n\nThere are also 2 problems with hunt's algorithm:\n    1. How should the training records be split?\n    2. How should the splitting procedure stop?\n        A stopping condtition is needed to terminate the \n        tree growing process. A possible strategy is to keep\n        splitting untill all nodes have a valid class label.",
			"lineHeight": 1.25,
			"baseline": 243
		},
		{
			"type": "arrow",
			"version": 262,
			"versionNonce": 540824987,
			"isDeleted": false,
			"id": "jWPGGXjJsGLQDlxzYU4Ms",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -2607.7129322427363,
			"y": 1621.612194116946,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 629.0622576340561,
			"height": 783.050112350749,
			"seed": 232058715,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "VP7pSpLF",
				"focus": 0.6485808878005923,
				"gap": 7.031891655298978
			},
			"endBinding": {
				"elementId": "EAZiOKrhr_tZ-S0dNBmlM",
				"gap": 6.244542558985117,
				"focus": 0.24944057305081518
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-443.1272604828564,
					694.5876467457736
				],
				[
					-629.0622576340561,
					783.050112350749
				]
			]
		},
		{
			"type": "text",
			"version": 674,
			"versionNonce": 1351722389,
			"isDeleted": false,
			"id": "wo8zqrso",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3868.291220381585,
			"y": 2379.269709729969,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 621.2593383789062,
			"height": 500,
			"seed": 1623747573,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "synFIY9QELJ9KXz5SWQeS",
					"type": "arrow"
				}
			],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Splitting\n\nWe can split attributes on their types\n\nNominal attributes:\n    -> We have the multi way split\n    -> We can also do a binary split\n\nOrdinal attributes.\n    -> multi-way split\n    -> binary split\n    -> note: Ordinal values can be grouped\n       as long as the grouping does not\n       violate the order property of \n       the attribute values\n\n\nContinuous attributes\n    -> Discretization: to form an ordinal categorical attribute\n    -> Binary decision: A < v or A <= v  etc",
			"rawText": "Splitting\n\nWe can split attributes on their types\n\nNominal attributes:\n    -> We have the multi way split\n    -> We can also do a binary split\n\nOrdinal attributes.\n    -> multi-way split\n    -> binary split\n    -> note: Ordinal values can be grouped\n       as long as the grouping does not\n       violate the order property of \n       the attribute values\n\n\nContinuous attributes\n    -> Discretization: to form an ordinal categorical attribute\n    -> Binary decision: A < v or A <= v  etc",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Splitting\n\nWe can split attributes on their types\n\nNominal attributes:\n    -> We have the multi way split\n    -> We can also do a binary split\n\nOrdinal attributes.\n    -> multi-way split\n    -> binary split\n    -> note: Ordinal values can be grouped\n       as long as the grouping does not\n       violate the order property of \n       the attribute values\n\n\nContinuous attributes\n    -> Discretization: to form an ordinal categorical attribute\n    -> Binary decision: A < v or A <= v  etc",
			"lineHeight": 1.25,
			"baseline": 493
		},
		{
			"type": "ellipse",
			"version": 258,
			"versionNonce": 1995762235,
			"isDeleted": false,
			"id": "EAZiOKrhr_tZ-S0dNBmlM",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3373.702325643369,
			"y": 2361.2497471964693,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 133,
			"height": 120,
			"seed": 1970699829,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"id": "bzQgHX44XpQiLUPtjcQVf",
					"type": "arrow"
				},
				{
					"id": "DmgwvokfKm7xx-RAzZGjj",
					"type": "arrow"
				},
				{
					"id": "lAhmEsnjWcLKVjiwvMlws",
					"type": "arrow"
				},
				{
					"type": "text",
					"id": "9eEUGg7y"
				},
				{
					"id": "jWPGGXjJsGLQDlxzYU4Ms",
					"type": "arrow"
				}
			],
			"updated": 1698072187862,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 275,
			"versionNonce": 1322396405,
			"isDeleted": false,
			"id": "9eEUGg7y",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3346.834881426259,
			"y": 2408.8233403252766,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 79.21990966796875,
			"height": 25,
			"seed": 253696699,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "married?",
			"rawText": "married?",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "EAZiOKrhr_tZ-S0dNBmlM",
			"originalText": "married?",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "arrow",
			"version": 195,
			"versionNonce": 1592912603,
			"isDeleted": false,
			"id": "bzQgHX44XpQiLUPtjcQVf",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3345.0905761780964,
			"y": 2481.935597482625,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 11.26989041090792,
			"height": 57.05650743062915,
			"seed": 1701129083,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "EAZiOKrhr_tZ-S0dNBmlM",
				"gap": 9.88837494235816,
				"focus": 0.38345427512031477
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-11.26989041090792,
					57.05650743062915
				]
			]
		},
		{
			"type": "arrow",
			"version": 195,
			"versionNonce": 832242773,
			"isDeleted": false,
			"id": "DmgwvokfKm7xx-RAzZGjj",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3296.046608845994,
			"y": 2490.0169838511965,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 16.68052762739353,
			"height": 59.6232807409433,
			"seed": 1076171701,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "EAZiOKrhr_tZ-S0dNBmlM",
				"gap": 9.519858728952615,
				"focus": 0.11785192208030014
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					16.68052762739353,
					59.6232807409433
				]
			]
		},
		{
			"type": "arrow",
			"version": 207,
			"versionNonce": 214292347,
			"isDeleted": false,
			"id": "lAhmEsnjWcLKVjiwvMlws",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3255.006483656737,
			"y": 2467.151076936605,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 39.52936051145116,
			"height": 60.373779091694814,
			"seed": 180977531,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "EAZiOKrhr_tZ-S0dNBmlM",
				"gap": 6.069260619124249,
				"focus": -0.2866795627481756
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					39.52936051145116,
					60.373779091694814
				]
			]
		},
		{
			"type": "text",
			"version": 10,
			"versionNonce": 1824633269,
			"isDeleted": false,
			"id": "JebUiLlQ",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3385.028588801389,
			"y": 2545.544818561799,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 50.79994201660156,
			"height": 25,
			"seed": 2018225493,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "single",
			"rawText": "single",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "single",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 11,
			"versionNonce": 2125672475,
			"isDeleted": false,
			"id": "iegAklZF",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3285.099705661077,
			"y": 2570.936583949911,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 69.89991760253906,
			"height": 25,
			"seed": 978937563,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "married",
			"rawText": "married",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "married",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "text",
			"version": 29,
			"versionNonce": 1567339285,
			"isDeleted": false,
			"id": "poUzcKqr",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3200.7335174360596,
			"y": 2532.439391264709,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 86.85990905761719,
			"height": 25,
			"seed": 1580645883,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "dirvorced",
			"rawText": "dirvorced",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "dirvorced",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "ellipse",
			"version": 119,
			"versionNonce": 1185707195,
			"isDeleted": false,
			"id": "oUYoceqebsE_GMEcYoHMY",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3369.639630728068,
			"y": 2618.2650304265085,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 121,
			"height": 89,
			"seed": 1063938293,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [
				{
					"type": "text",
					"id": "Bzz4KaJV"
				},
				{
					"id": "rVRUPWdGSuB51NIlUDE1E",
					"type": "arrow"
				},
				{
					"id": "q03YqR5S90Scu0GZ3zhjh",
					"type": "arrow"
				}
			],
			"updated": 1698072187862,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 73,
			"versionNonce": 537823349,
			"isDeleted": false,
			"id": "Bzz4KaJV",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3345.199551622178,
			"y": 2650.2987786637073,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 72.55992126464844,
			"height": 25,
			"seed": 1418491899,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Married",
			"rawText": "Married",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "oUYoceqebsE_GMEcYoHMY",
			"originalText": "Married",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "arrow",
			"version": 77,
			"versionNonce": 341058907,
			"isDeleted": false,
			"id": "rVRUPWdGSuB51NIlUDE1E",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3240.9374018380286,
			"y": 2688.0043968819555,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 59.86202534761105,
			"height": 54.1218311361954,
			"seed": 1402456123,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "oUYoceqebsE_GMEcYoHMY",
				"gap": 14.854506877690213,
				"focus": -0.5165363958596312
			},
			"endBinding": {
				"elementId": "TbUr2fyM",
				"gap": 9.82907047281742,
				"focus": -0.006300204931598633
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					59.86202534761105,
					54.1218311361954
				]
			]
		},
		{
			"type": "text",
			"version": 57,
			"versionNonce": 644854229,
			"isDeleted": false,
			"id": "TbUr2fyM",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3228.582550442369,
			"y": 2751.9552984909683,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 145.49984741210938,
			"height": 25,
			"seed": 682075835,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "rVRUPWdGSuB51NIlUDE1E",
					"type": "arrow"
				}
			],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Single, divorced",
			"rawText": "Single, divorced",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Single, divorced",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "arrow",
			"version": 50,
			"versionNonce": 2130493947,
			"isDeleted": false,
			"id": "q03YqR5S90Scu0GZ3zhjh",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3357.131007772342,
			"y": 2702.728108031432,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 28.716670235108722,
			"height": 48.40810125346843,
			"seed": 1908481141,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "oUYoceqebsE_GMEcYoHMY",
				"gap": 10.032658020831533,
				"focus": 0.367899148602526
			},
			"endBinding": {
				"elementId": "O35HqSgE",
				"gap": 4.095446030340554,
				"focus": -0.2839864552855761
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-28.716670235108722,
					48.40810125346843
				]
			]
		},
		{
			"type": "text",
			"version": 29,
			"versionNonce": 228896565,
			"isDeleted": false,
			"id": "O35HqSgE",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3418.611246250175,
			"y": 2755.231655315241,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 69.89991760253906,
			"height": 25,
			"seed": 283753243,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [
				{
					"id": "q03YqR5S90Scu0GZ3zhjh",
					"type": "arrow"
				}
			],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "married",
			"rawText": "married",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "married",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "image",
			"version": 276,
			"versionNonce": 262720155,
			"isDeleted": false,
			"id": "DQIppbcdHo3RAW43vgg1P",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -4047.627464806345,
			"y": 2805.5794403291106,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 91.3287677685968,
			"height": 105.17780222531026,
			"seed": 620361461,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "1284b3558ece4e319d179ac6b3b22ef7ab41a5eb",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "text",
			"version": 59,
			"versionNonce": 873660565,
			"isDeleted": false,
			"id": "Euncpjps",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -4068.1489866621996,
			"y": 2778.1661530851443,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 136.97984313964844,
			"height": 25,
			"seed": 743678453,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Discretization",
			"rawText": "Discretization",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Discretization",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "image",
			"version": 155,
			"versionNonce": 185253691,
			"isDeleted": false,
			"id": "GgDAj7dOSdYjpOrlLTDXB",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -4263.970883183065,
			"y": 2805.835834619883,
			"strokeColor": "transparent",
			"backgroundColor": "transparent",
			"width": 183.5429218426698,
			"height": 98.6494076713279,
			"seed": 1746119739,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"status": "pending",
			"fileId": "0fb2ebcb7d4433acceb73af24115db8cfd246ba9",
			"scale": [
				1,
				1
			]
		},
		{
			"type": "text",
			"version": 42,
			"versionNonce": 259007989,
			"isDeleted": false,
			"id": "CgV9F8Ji",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -4251.624968821461,
			"y": 2765.0607257880524,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 141.97984313964844,
			"height": 25,
			"seed": 1881035157,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187862,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Binary decision",
			"rawText": "Binary decision",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Binary decision",
			"lineHeight": 1.25,
			"baseline": 18
		},
		{
			"type": "arrow",
			"version": 80,
			"versionNonce": 2072322011,
			"isDeleted": false,
			"id": "synFIY9QELJ9KXz5SWQeS",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -3883.853915296865,
			"y": 2393.1942262331177,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 509.4734861743764,
			"height": 0,
			"seed": 192643413,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1698072187863,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "wo8zqrso",
				"focus": 0.9443019339874045,
				"gap": 15.56269491528019
			},
			"endBinding": null,
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-509.4734861743764,
					0
				]
			]
		},
		{
			"type": "text",
			"version": 74,
			"versionNonce": 1119985493,
			"isDeleted": false,
			"id": "DSYbDs9o",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -4833.178305129828,
			"y": 2334.219803396212,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 371.7395935058594,
			"height": 75,
			"seed": 2009314741,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1698072187863,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Measures for selecting the best split\n\nGini index",
			"rawText": "Measures for selecting the best split\n\nGini index",
			"textAlign": "left",
			"verticalAlign": "top",
			"containerId": null,
			"originalText": "Measures for selecting the best split\n\nGini index",
			"lineHeight": 1.25,
			"baseline": 68
		},
		{
			"id": "mceo560K",
			"type": "text",
			"x": -2677.4880539870433,
			"y": -128.0332487578445,
			"width": 70.19992065429688,
			"height": 25,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "hachure",
			"strokeWidth": 1,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"seed": 1787394715,
			"version": 2,
			"versionNonce": 2066377851,
			"isDeleted": true,
			"boundElements": null,
			"updated": 1698072187863,
			"link": null,
			"locked": false,
			"text": "Mileage",
			"rawText": "Mileage",
			"fontSize": 20,
			"fontFamily": 1,
			"textAlign": "left",
			"verticalAlign": "top",
			"baseline": 18,
			"containerId": null,
			"originalText": "Mileage",
			"lineHeight": 1.25
		}
	],
	"appState": {
		"theme": "dark",
		"viewBackgroundColor": "#ffffff",
		"currentItemStrokeColor": "#1e1e1e",
		"currentItemBackgroundColor": "transparent",
		"currentItemFillStyle": "hachure",
		"currentItemStrokeWidth": 1,
		"currentItemStrokeStyle": "solid",
		"currentItemRoughness": 1,
		"currentItemOpacity": 100,
		"currentItemFontFamily": 1,
		"currentItemFontSize": 20,
		"currentItemTextAlign": "left",
		"currentItemStartArrowhead": null,
		"currentItemEndArrowhead": "arrow",
		"scrollX": 3562.103438602428,
		"scrollY": 478.41786414245985,
		"zoom": {
			"value": 0.65
		},
		"currentItemRoundness": "round",
		"gridSize": null,
		"currentStrokeOptions": null,
		"previousGridSize": null,
		"frameRendering": {
			"enabled": true,
			"clip": true,
			"name": true,
			"outline": true
		}
	},
	"files": {}
}
```
%%