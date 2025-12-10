-- NEXT SERVICE DATE CALCULATION
SELECT 
    [VEHICLE DETAILS].[Vehicle ID],
    LatestService.[MOST RECENT SERVICE],
    IIf(
        [VEHICLE DETAILS].[MAKE/MODEL] = "MERCEDES BENZ E CLASS",
        DateAdd("m", 3, LatestService.[MOST RECENT SERVICE]),
        DateAdd("d", 15, DateAdd("m", 3, LatestService.[MOST RECENT SERVICE]))
    ) AS NEXTSERVICE,
    [VEHICLE DETAILS].[VEHICLE REG]
FROM [VEHICLE DETAILS]
LEFT JOIN (
    SELECT 
        S.[Vehicle ID], 
        Max(S.[LAST SERVICED]) AS [MOST RECENT SERVICE]
    FROM SERVICES AS S 
    GROUP BY S.[Vehicle ID]
) AS LatestService 
ON [VEHICLE DETAILS].[Vehicle ID] = LatestService.[Vehicle ID]
WHERE [VEHICLE DETAILS].Notes Is Null;
