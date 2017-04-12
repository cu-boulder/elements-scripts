select p.fis_id, p.fis_employment_status, p.export_to_elements, d.alias_name, d.export_to_elements, p.lastfirstname, e.fis_id, e.faculty_type 
from fis_person p
left join fis_dept d
on d.dept_id = p.home_dept
left join elements_hr_feed_view e
on e.fis_id = p.fis_id
