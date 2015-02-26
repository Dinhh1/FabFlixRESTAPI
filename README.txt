
Optimizations
1. An optimization we made was add an index to to tbl_people on name column. This greatly reduced insertion time because we had to query tbl_people everytime to check if it exists or not and insert if it doesn't exist. With the index, it creates an alphabetical index that will allow it to 
perform the search in a shorter amount of time. Before the index, our insertion took about 10 minutes, after the index, it takes approximately 1 min.

2. Another optimization technique we did was create a stored procedure to insert the document. In this stored procedure,
	we check if any of the documents relations exists, and if they don't we insert it, grab the id and then insert our document.
	This allows us to fully populate the database together and ensure data integrity. We also implemented a exploited string formatting,
	that allow us to send in arrays to the stored procedure by appending arrays together and separting each values with a ",". The stored
	procedure is aware of this, and parses this string and separting the values. This allows us to insert into tbl_author_document_mapping easier,
	instead of ever having to query on the document's title which could be expensive, everytime we insert the document, we have it's id thus saving 
	any query time on tbl_dblp_document, instead we query only tbl_people which has an index on name. 

3. Another optimization we made was to batch insert the documents together with a batch statement. Batch insert allows for the all
the statements to executed in one sql call which will save several RTT's to the db. 