SELECT
    items.item_id,
    items.item_name,
    items.manufacturer_name,
    items.cost,
    items.weight_kg,
    top_item_by_total_item_count.total_item_count
FROM
(
    SELECT
        transactions.item_id,
        sum(total_item_count) AS total_item_count
    FROM
        transactions
    GROUP BY
        item_id
    ORDER BY
        sum(total_item_count) DESC
    LIMIT 10
) AS top_item_by_total_item_count
LEFT JOIN items
    ON top_item_by_total_item_count.item_id = items.item_id;