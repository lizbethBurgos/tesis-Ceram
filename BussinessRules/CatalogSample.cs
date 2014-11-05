using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Project.DataAccess;
using System.Data;

namespace BussinessRules
{
    public class CatalogSample
    {
        public void addSample(Sample s)
        {
            DataBase bd = new DataBase();
            bd.connect();
            String sql = "addSampler";
            bd.CreateCommandSP(sql);
            bd.CreateParameter(DbType.String,"codApplicant", s.Cod_AppComp);
            bd.CreateParameter(DbType.String,"codSampleComp", s.Cod_SamplerComp);
            bd.CreateParameter(DbType.String,"dateAdmis",s.Date_Admiss);
            bd.CreateParameter(DbType.String,"dateSampler",s.Date_Sample);
            bd.CreateParameter(DbType.String,"placExtrac",s.Inst_Extrac);
            bd.CreateParameter(DbType.String,"keySampler", s.Key_Sample);
            bd.CreateParameter(DbType.String,"nameSampler",s.Name_Sampler);
            bd.CreateParameter(DbType.String,"numSampler",s.Num_sample);
            bd.CreateParameter(DbType.String,"obs",s.Observation);
            bd.CreateParameter(DbType.String,"presert",s.Preserva);
            bd.CreateParameter(DbType.String,"timeAdmis",s.Time_Admiss);
            bd.CreateParameter(DbType.String,"timeSampler",s.Time_Sample);
            bd.CreateParameter(DbType.String,"codUser",s.Cod_User);
            bd.Execute();
            bd.Close();
        }
    }
}
