-- 1. One MSP was kicked out of the Labour party and has no party. Find him.
SELECT name
FROM msp
WHERE party IS NULL

-- 2. Obtain a list of all parties and leaders.
SELECT name ,leader
FROM party

-- 3. Give the party and the leader for the parties whic h have leaders.
SELECT name, leader
FROM party
WHERE leader IS NOT NULL

-- 4. Obtain a list of all parties which have at least one MSP.
SELECT DISTINCT party.name
FROM msp JOIN party ON (msp.party=party.code) 
WHERE  party.name IS NOT NULL

-- 5. Obtain a list of all MSPs by name, give the name of the MSP and the name of the party where available. Be sure that Canavan MSP, Dennis is in the list. Use ORDER BY msp.name to sort your output by MSP.
SELECT msp.name, party.name
FROM msp LEFT JOIN party ON msp.party=party.code
ORDER BY msp.name

-- 6. Obtain a list of parties which have MSPs, include the number of MSPs.
SELECT party.name, COUNT(msp.name)
FROM msp JOIN party ON msp.party=party.code
GROUP BY party.name

-- 7. A list of parties with the number of MSPs; include parties with no MSPs.
SELECT party.name, COUNT(msp.name)
FROM msp RIGHT JOIN party ON msp.party=party.code
GROUP BY party.name


 