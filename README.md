# ProjectETL
### The project team
The team consisted of four members with various backgrounds and experienced that allocated by the class instructor. Regular catch ups and communications were done via Slack.<br>
<ul>
  <li>Anita Rynkanen</li>
  <li>Kelvin Ngyuyen</li>
  <li>Matt Suffra</li>
  <li>Raymond Chau</li>
 </ul><br>

### Data source
<ul>
<li><a href="https://data.gov.au/data/dataset/international-airlines-airline-by-country-of-port-data/resource/809c77d8-fd68-4a2c-806f-c63d64e69842?view_id=c2e9db61-be01-4673-b83e-d8b7f5b9dd8e">Airlines, Operated Flights and Seats to and from Australia Government Database</a></li><br>
<li><a href="https://www.kaggle.com/open-flights/airline-database?select=airlines.csv">Kaggle Airline Database</a></li>
</ul><br>

### Data Transformation
Data was extracted from source and removed duplicates records or invalid records and transformed to structured tables that can be later uploaded to server. You can find out data transformed <a href= "https://github.com/RealDreammaker/ProjectETL/tree/main/Data%20Transformed">here.</a> <br><br>
<ul>
<li>Used excel to for the purposes of a quick data exploration</li>
<li>We used Pandas functions in Jupyter Notebook to load the 2 data sources</li>
<li>Reviewed the files and transformed them into dataframes and also had to apply Pandas functions.</li>
<li>Loaded into pgAdmin4</li>
<li>Created queries and to further create additional tables</li>
</ul><br>

### Type of database
We opted to use 2 sources of data that were correlated to allow us to merge to build a more complete database around airlines, flights. Our final relational database are combined of multiple structured tables that are unique with primary keys and composite keys, which can be verified by SQL Postgres server before uploading.<br>

### Description of findings
We chose this dataset so people are able to analyze flights between different countries, airline operations, number of take offs, between time periods with the use of the month and year. Additionally comparisons can be made between the different Airlines/Countries across time periods.A more detailed report can be found in our <a href="https://github.com/RealDreammaker/ProjectETL/Final report_v2">Final report here.</a><br>
