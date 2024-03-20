<?php

namespace App\Models;

use \CodeIgniter\Model;


class Allmodel extends Model
{
    public $db;

    public function __construct()
    {
        $this->db = \Config\Database::connect();
    }


    public function insert_table_get_id($table = false, $data = [])
    {
        $builder = $this->db->table($table);
        $builder->insert($data);

        if ($this->db->affectedRows() == 1) {
            return $this->db->insertID();
        } else {
            return false;
        }
    }

    function insert_table($table, $data = [])
    {
        $builder = $this->db->table($table);
        $builder->insert($data);

        if ($this->db->affectedRows() == 1) {
            return true;
        } else {
            return false;
        }
    }

    public function update_table($table = null, $where1 = null, $data = null)
    {
        // WHERE BISA DUA KALI KALOH PAKE ARRAY []
        $builder = $this->db->table($table);
        $builder->where($where1);
        $builder->update($data);
        if ($this->db->affectedRows() == 1) {
            return true;
        } else {
            return false;
        }
    }

    public function delete_table($table = false, $data = [])
    {
        $builder = $this->db->table($table);
        $builder->delete($data);

        return true;
    }

    public function view_table($select = null, $table = null, $where1 = null)
    {
        $db = \Config\Database::connect();
        $builder = $db->table($table);

        if ($select != null) {
            $builder->select($select);
        }

        if ($where1 != null) {
            $builder->where($where1);
        }
        return $builder->get();
    }

    public function financialPerformance($params = null)
    {
        $query = "
            SELECT
            a.name,
            a.symbol,
            (
            SELECT
                sum( b.amount ) 
            FROM
                tbl_finance b 
            WHERE
                YEAR ( b.DATE ) = '2019' 
                AND b.name = a.name 
            ) AS '2019', 
            (
            SELECT
                sum( b.amount ) 
            FROM
                tbl_finance b 
            WHERE
                YEAR ( b.DATE ) = '2020' 
                AND b.name = a.name 
            ) AS '2020',
            (
            SELECT
                sum( b.amount ) 
            FROM
                tbl_finance b 
            WHERE
                YEAR ( b.DATE ) = '2021' 
                AND b.name = a.name 
            ) AS '2021',
            (
            SELECT
                sum( b.amount ) 
            FROM
                tbl_finance b 
            WHERE
                YEAR ( b.DATE ) = '2022' 
                AND b.name = a.name 
            ) AS '2022',
            (
            SELECT
                sum( b.amount ) 
            FROM
                tbl_finance b 
            WHERE
                YEAR ( b.DATE ) = '2023' 
                AND b.name = a.name 
            ) AS '2023' 			
        FROM
            tbl_finance a 
        WHERE a.category=$params
        GROUP BY
            a.name, a.symbol;
        ";

        return $this->db->query($query)->getResultArray();
    }


    function chartNetSales()
    {
        $query = "
        SELECT a.name, 
		EXTRACT(YEAR FROM a.date) as date,
		(SELECT b.amount FROM tbl_finance b WHERE  b.subname='IE' AND  YEAR(b.date)=YEAR(a.date)  ) as amount_ie,
		(SELECT b.amount FROM tbl_finance b WHERE  b.subname='PLN' AND  YEAR(b.date)=YEAR(a.date)  ) as amount_pln
		 FROM tbl_finance a WHERE subname is not null and category=1 order by subname asc, date asc ;
        ";
        return $this->db->query($query)->getResultArray();
    }
}
