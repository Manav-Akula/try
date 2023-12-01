use pro;

SELECT *
FROM QuoteRequest
WHERE NumberOfTrees = (SELECT MAX(NumberOfTrees) FROM QuoteRequest);

SELECT *
FROM QuoteRequest
WHERE HeightOfTallestTree = (SELECT MAX(HeightOfTallestTree) FROM QuoteRequest);

SELECT qr.*
FROM QuoteRequest qr
INNER JOIN ClientRespondToQuoteResponse cr
ON qr.RequestID = cr.ResponseID
WHERE qr.NumberOfTrees = 1
AND cr.Status = 'Accepted';

SELECT DISTINCT C.*
FROM Client AS C
JOIN QuoteRequest AS QR ON C.ClientID = QR.ClientID
LEFT JOIN OrderOfWork AS OW ON QR.RequestID = OW.RequestID
WHERE OW.OrderID IS NULL;





