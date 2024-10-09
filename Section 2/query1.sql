SELECT
    members.membership_id,
    members.first_name,
    members.last_name,
    members.email,
    top_members_by_spending.total_spending
FROM
(
    SELECT
        transactions.membership_id,
        sum(total_item_price) AS total_spending
    FROM
        transactions
    GROUP BY
        membership_id
    ORDER BY
        sum(total_item_price) DESC
    LIMIT 10
) AS top_members_by_spending
LEFT JOIN members
    ON top_members_by_spending.membership_id = members.membership_id;