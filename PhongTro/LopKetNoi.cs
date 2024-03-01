using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace PhongTro
{
    public class LopKetNoi
    {
        SqlConnection con;
        // hàm quản lí chuỗi kết nối
        void moketnoi()
        {
            string sqlCon = @"";
            con = new SqlConnection(sqlCon);
            con.Open();
        }
        void dongketnoi()
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
        public DataTable docdulieu(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                moketnoi(); // truoc khi do du lieu phai mo ket noi
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                da.Fill(dt); // do truc tiep vao
            }
            catch
            {
                dt = null;
            }
            finally
            {
                dongketnoi();
            }

            return dt;
        }
        // hàm cập nhật dữ liệu
        public int capnhatdulieu(string sql)
        {
            int kqua = 0;
            try
            {
                moketnoi();
                SqlCommand cmd = new SqlCommand(sql, con);
                kqua = cmd.ExecuteNonQuery();
            }
            catch
            {
                kqua = 0;
            }
            finally
            {
                dongketnoi();
            }
            return kqua;
        }
    }
}