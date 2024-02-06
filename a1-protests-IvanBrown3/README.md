# Assignment 1: Protests

During the past few years in the United States, there has been a surge of protests in support of the Black Lives Matter movement, women's rights, trans rights, immigration reform, gun control, the environment, and many other social and political issues.

In this assignment, you will work with data from [CountLove](https://countlove.org/), a group that collects data about protests from across the United States, including information about the purpose of the protests, the location of the protests, as well as how many people attended the protests. This data has often been [cited by the *New York Times*](https://www.nytimes.com/2020/08/28/us/black-lives-matter-protest.html), among other major outlets.

Through this assignment, you will be able to answer questions including:
- What were the most attended and least attended protests in the US in the last 5 years?
- How many protests occurred in Washington state?
- How did the number of protests in 2019 compare to 2020, and why?
- Why are people protesting in the US? What are the biggest motivators?


This assignment is divided into 2 parts. You will complete your coding work in the `analysis.R` file, and you will write short answer responses related to critical analysis and reflection of the data in this `README.md` file. Before getting started on your coding work, you should complete the section **"Critical Analysis & Reflection: Before You Code"** below.

When you are finished with the assignment, be sure to push all changes to your GitHub repository and then submit the link on Canvas.

## Before You Code: Critical Analysis & Reflection

Before diving into this (or any) dataset, it's important to know where the data came from, and it's important to have or to seek out _domain familiarity_ — in other words, knowledge about the subject/topic of the dataset. (We don't want to be "strangers in the dataset," as Catherine D'Ignazio and Lauren Klein describe it.)

To get more familiar, we are going to begin by doing some background reading.

- First, please read [this FAQ](https://countlove.org/faq.html) from the CountLove website and the opening of [this blog post](https://www.tommyleung.com/countLove/index.htm). Based on the information in these pieces, why did the creators start collecting the CountLove data? Please answer in 2-3 sentences (3 points)


To make an assesible location where the public is able to see the data on protests throughout the years. It gives more writers, media and the others the ability to better educatated desicions with their goals. 

- Next, we would like you to read this [*New York Times* piece, which uses CountLove data](https://www.nytimes.com/interactive/2020/06/13/us/george-floyd-protests-cities-photos.html) (here's a [Google Doc version for anyone who gets paywalled](https://docs.google.com/document/d/1sdjFsA5csYuH4plNEEk7WXT77K5h5ZuyW05CBwYdk6A/edit?usp=sharing)), and which describes the Black Lives Matter protests that occurred in the summer of 2020. Please summarize the main point or argument of this article in 2-3 sentences (3 points)


The summer of 2020 had many protests that stemed from the deaths of people in the black community by police officers. It was individuals like George Floyd, Ahmaud Arbery. Breonna Taylor, who are only a few to name. The protest went all through out the nation that summer reaching countless cities and communities. 

Next, we're going to reflect about who collected this data, and what's actually inside it.

- Who collected and shared the CountLove data, and what do they do for a living? Please answer in 1-2 sentences(2 points) 

 Tommy Leung and Nathan Perkins are the individuals who colleceted and shared the CountLove data. They are engineers and scientists for their living.

- As Klein and D'Ignazio remind us, when it comes to data, "what gets counted counts." What types of demonstrations does CountLove include in their data, and what types do they exclude? (3 points)

Countlove includes any accounts of public diplsays of protest and the information on that protest. They exclude events related to awareeness, politics, fundraising, celebrations, or historic reenactments. 

- How and where does CountLove get their data about the protests? Please answer in 2-3 sentences (2 points)

They use an algothrithm to crawl local newspaper and telelvision sites and collect their data to gather a majority of their protest data. They are running it consistently throughout the day so they are able to get a lot of data. 

- How does CountLove make their estimates about the number of people who attended a protest? What potential problems might arise from this method of estimation? Please answer in 3-4 sentences (4 points)

Countlove records their estimates on the number of people attending protests by interpreting words and giving them a relative estimate based on the word use. For example if the data they collect indidcates hundreds of people they just assume its a 100 people. Problems from this method is that it likley on several accounts is not accounting for more than just 100 people to be at a protest. 

## While You Code: Critical Analysis & Reflection

- Reflection 1: Why do you think the mean is higher than the median? Which metric would you use in a report about this data, and why? Please answer in 2-3 sentences (2 points)

I think that the mean is higher than the median because there are some big outliers with cities that had thousands of individuals at the protest. I would use the median in a report about this data because i think it more accurately shows how many people were accounted for in the protest across the country.

- Reflection 2: Before actually calculating the number of protests that occurred in 2018, 2019, 2020, record your guesses for the following questions. (1 point)

  Guess: Do you think there were more protests in 2019 than in 2018? Why or why not? Please answer in 1 or 2 sentences

  I think there were more protest in 2019.

  Guess: Do you think there were more protests in 2020 than in 2019? Why or why not? Please answer in 1 or 2 sentences

  I think there were more protest in 2020.

- Reflection 3: Does the change in the number of protests from 2018 to 2019 to 2020 surprise you? Why or why not? What do you think explains the fluctuation? Please answer in 1 or 2 sentences (2 points)

Yes it suprises me because I did not expect that 2018 had more protest than 2019.

- Reflection 4: What is the first and fourth most frequent category of protest? Do these frequencies align with your sense of the major protest movements in the U.S. in the last few years? Why or why not? (3 points)

Racial injustice and immigration. Yes these frequencies do align with me because major protests were happening on these issues all over the country. These were the protests I followed throughout the years. 

## After You Code: Critical Analysis & Reflection

In the second chapter of *Data Feminism*, Klein and D'Ignazio describe 4 ways that data scientists can challenge power and take action:


> Taking action can itself take many forms, and in this chapter we offer four starting points:  
> (1) Collect: Compiling counterdata—in the face of missing data or institutional neglect—offers a powerful starting point as we see in the example of the DGEI, or in María Salguero’s femicide maps discussed in chapter 1.  


> (2) Analyze: Challenging power often requires demonstrating inequitable outcomes across groups, and new computational methods are being developed to audit opaque algorithms and hold institutions accountable.  


> (3) Imagine: We cannot only focus on inequitable outcomes, because then we will never get to the root cause of injustice. In order to truly dismantle power, we have to imagine our end point not as “fairness,” but as co-liberation.  


> (4) Teach: The identities of data scientists matter, so how might we engage and empower newcomers to the field in order to shift the demographics and cultivate the next generation of data feminists?  

- How does the CountLove project embody one or more of these 4 forms of challenging power? Please answer in at least 3-4 sentences (3 points)

Countlove is collecting data and analyzing to compartmentalize it to help teach people about how the protest movement has spread all across the nation. The data that is clean and it well presented so it is easy to imagine how details about every protest. Addtionally, countlove is trying to help the community with this data, as whats collected is for the public to see. This was everyone can analyze and imagine what the data has to show.  

- What is the most interesting or surprising thing you learned from this analysis? Please answer in at least 2-3 sentences (2 points)

The most suprising thing that I learned about this analysis is the shear number of cities and states that had protest. It reminded me that even though I am from Seattle, protest were occuring in far more places than I could first realize. 

- What is a kind of analysis that you would like to do or that would be interesting to do with the CountLove data that you don't have the time or skills to accomplish at this moment? Please answer in at least 2-3 sentences (2 points)

I think if I had the time and skill to use this data in a different way, I would want to create a heat map of the locations where the data is presented dynamically, so that I could click on locations on the heat map and read that data. I think that this would be a great way to present the data in different but uniqley broader way