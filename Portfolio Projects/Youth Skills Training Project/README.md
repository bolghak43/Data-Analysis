Youth Skills Training and Employment Outcomes


1. Business Summary 
This project focuses on analyzing youth vocational skills training programs in the Kakuma Refugee Camp and understanding how these programs relate to employment outcomes and post-training income. Using the kakuma_skills_training.csv dataset and the information provided in the project brief and capstone presentation, the study aims to evaluate performance by skill type, training center, age, and gender to determine which factors most influence youth employment success in the camp environment.

2. Business Problems
The main business problem addressed in this project is the limited understanding of which specific vocational skills lead to the best employment outcomes and income levels for youth in Kakuma. Training centers also perform unevenly in terms of completion, employment placement, and income generation, and the causes of these disparities are not well defined.

Additionally, demographic barriers such as age and gender create inequalities, with younger trainees and certain gender groups experiencing lower completion rates and poorer employment outcomes. Some skill areas, such as Computer Skills, show indications of a misalignment between training content and local job market demand. These problems reduce the effectiveness of youth empowerment programs and hinder evidence-based decision-making for NGOs and training providers.

3. Business Understanding
The business understanding of this project is rooted in the need to improve the efficiency and impact of youth skills training initiatives in Kakuma. Stakeholders—including NGOs, training centers, and program designers—require data-driven insights to revise their training curricula, allocate resources effectively, and address demographic or structural gaps in their programs.

By analyzing trends in completion, employment, and income across different skills and training centers, this project converts raw data into actionable intelligence. The cleaned dataset, analytical metrics, and Power BI dashboard serve as decision-support tools for enhancing program design and maximizing the positive impact on refugee youth.

4. Business Objectives
The main objectives of this project is to transform a raw dataset into a clean, analysis-ready format that can support accurate measurement of training performance and employment outcomes. The project aims to calculate completion rates, employment rates, and average income across skill types, training centers, age groups, and genders.

Additionally, it seeks to identify the demographic and skill-based factors that most strongly influence employment success and income generation. A secondary objective is to produce a functional Power BI dashboard that communicates these insights visually and supports program monitoring, reporting, and future planning.

5. Business Criterion of Success
This project is considered successful if the dataset is thoroughly cleaned with standardized values across key columns such as Age, Gender, Skill Type, Training Center, Completion Status, and Post-Training Income. It should generate clear and interpretable metrics such as completion rates, employment rates, and average income by skill and center.

Success also requires that insights highlight the highest-performing training areas, identify gaps such as low-performing skills or demographic disadvantages, and result in practical recommendations. Finally, the Power BI dashboard must allow stakeholders to interact with the data easily and derive insights that can guide real program improvements.

6. Business Data Understanding
The primary datasets, kakuma_skills_training.csv, contains essential information about trainees, including identifiers, gender, age, training center, skill type, completion status, and employment or income outcomes after training. The dataset includes missing values in several fields, such as age and employment status, making cleaning and preprocessing necessary.

Some of the categorical fields contain inconsistent naming conventions and must be standardized to support accurate grouping and analysis. Income values appear in different formats and therefore require transformation, depending on whether they are numeric or categorical. Understanding and addressing these data challenges is crucial for conducting accurate exploratory analysis and producing reliable insights.

7. Business require.txt
The project requires a minimal set of Python packages to support data cleaning, analysis, and exporting files for Power BI integration. The recommended environment includes Pandas, and Numpy for general data manipulation and file handling. Optional packages may be included for more complex modeling or visualizations, although Power BI serves as the primary dashboarding tool. These requirements ensure that the project is reproducible and that other users can easily re-run the analysis or extend it.

8. Business EDA
The exploratory data analysis began with cleaning missing values, standardizing category labels, and transforming variables such as age and income. Age groups were created to understand how outcomes differ among younger and older trainees. Key performance metrics—completion rate, employment rate, and average income—were computed and analyzed across skill types and training centers. The EDA revealed important relationships: Tailoring had the highest employment and income outcomes, while Computer Skills performed the lowest despite high female participation.

Carpentry had the highest number of employed trainees, particularly among males. Income peaked among trainees aged 26–35, while those under 18 earned significantly less. Training centers showed performance variations, with NRC achieving the highest completion and income metrics, while Windle Trust recorded a higher employment rate. These insights were visualized in a two-page Power BI dashboard covering skills, centers, and demographics.

9. Results / Conclusion
The final results show that Tailoring is the strongest-performing skill area with the highest employment rate and income share. Carpentry demonstrates strong demand with the highest number of employed graduates, despite gender disparities. Computer Skills appears to underperform in both employment and income, pointing to potential structural mismatches between training and the job market.

Demographic analysis shows that older trainees, especially those aged 26–35, achieve the best income outcomes, while under-18 trainees consistently underperform. Training centers vary significantly in performance, which indicates that internal management, teaching quality, or resource availability may influence outcomes. Overall, the results paint a clear picture of which areas require investment, reform, or expansion.

10. Business Recommendations
Based on the findings, the project recommends strengthening support for trainees under 18 by introducing mentorship, basic life-skills preparation, and participation support to improve completion and income results. There is a need to redesign and update the Computer Skills curriculum to align with realistic employment opportunities in Kakuma and create stronger pathways to digital internships or remote work. High-performing skills such as Tailoring and Carpentry should be reinforced and replicated across other training areas by studying their successful models of instruction and employer engagement.

Gender gaps should be addressed through targeted initiatives such as scholarships, safe transport options, awareness programs, and inclusion strategies. Differences in training center performance warrant further qualitative assessment to identify best practices and operational challenges. Finally, income measurement methods should be standardized to improve monitoring, and the Power BI dashboard should be adopted as an ongoing program management tool for tracking key metrics and evaluating the impact of interventions over time.
