SELECT * FROM Account_holders;

SELECT fname,lname,Balance, CASE WHEN Balance <= 40000 THEN 'Low salary' ELSE 'High salary' END AS Category FROM Account_holders;

-- Output 

fname   lname   Balance  Category
Raju	Kumar	 25000	Low salary
Sham	singh	 30000	Low salary
Paul	vector	 35000	Low salary
Alex	carry	 20000	Low salary
Victor	jacson	 45000	High salary
Mohit	Sharma	 10000	Low salary
Raman	Kushwaha 60000	High salary
Ram	    Chandra  72000	High salary
Kisan	Singh	 28000	Low salary
Pradeep	Kumar	 26000	Low salary


SELECT fname,lname,Balance, CASE WHEN Balance <= 30000 THEN 'Low salary' WHEN Balance >= 35000 AND Balance <= 45000 THEN 'Medium salary' ELSE 'High salary' 
END AS Category FROM Account_holders;

-- Output 

fname   lname   Balance  Category
Raju	Kumar	 25000	Low salary
Sham	singh	 30000	Low salary
Paul	vector	 35000	Medium salary
Alex	carry	 20000	Low salary
Victor	jacson	 45000	Medium salary
Mohit	Sharma	 10000	Low salary
Raman	Kushwaha 60000	High salary
Ram	Chandra	     72000	High salary
Kisan	Singh	 28000	Low salary
Pradeep	Kumar	 26000	Low salary