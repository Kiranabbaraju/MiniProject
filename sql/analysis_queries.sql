-- Defect Rate
SELECT SUM(defects) * 1.0 / COUNT(*) AS defect_rate FROM batches;

-- Batch Failure Rate
SELECT COUNT(CASE WHEN status = 'defective' THEN 1 END) * 1.0 / COUNT(*) FROM batches;

-- Downtime Rate
SELECT SUM(downtime_minutes) * 1.0 / SUM(end_time - start_time) AS downtime_rate FROM batches;