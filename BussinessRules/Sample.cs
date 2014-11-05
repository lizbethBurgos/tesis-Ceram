using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BussinessRules
{
    public class Sample
    {
        private int cod_Sample, num_sample;
        private string key_Sample, preserva, inst_Extrac, name_Sampler, observation;
        private DateTime date_Admiss, date_Sample, time_Admiss, time_Sample;
        private SamplerCompany cod_SamplerComp;
        private ApplicantCompany cod_AppComp;
        private Usuario cod_User;

        public Sample(ApplicantCompany codAppComp, SamplerCompany codSampComp, DateTime dateAdmiss, DateTime dateSampler, string instExtracc, string keySampler, string nameSampler,
            int numSampler, string obser, string presert, DateTime timeAdmiss, DateTime timeSampler, Usuario codUser)
        {
            codAppComp = this.cod_AppComp;
            codSampComp = this.cod_SamplerComp;
            dateAdmiss = this.date_Admiss;
            this.date_Sample = dateSampler;
            this.inst_Extrac = instExtracc;
            keySampler = this.key_Sample;
            nameSampler = this.name_Sampler;
            numSampler = this.num_sample;
            obser = this.observation;
            presert = this.preserva;
            timeAdmiss = this.time_Admiss;
            timeSampler = this.time_Sample;
            codUser = this.cod_User;

        }
        public Usuario Cod_User
        {
            get { return cod_User; }
            set { cod_User = value; }
        }

        public ApplicantCompany Cod_AppComp
        {
            get { return cod_AppComp; }
            set { cod_AppComp = value; }
        }

        public SamplerCompany Cod_SamplerComp
        {
            get { return cod_SamplerComp; }
            set { cod_SamplerComp = value; }
        }
        public string Preserva
        {
            get { return preserva; }
            set { preserva = value; }
        }

        public DateTime Time_Sample
        {
            get { return time_Sample; }
            set { time_Sample = value; }
        }

        public DateTime Time_Admiss
        {
            get { return time_Admiss; }
            set { time_Admiss = value; }
        }

        public DateTime Date_Sample
        {
            get { return date_Sample; }
            set { date_Sample = value; }
        }

        public DateTime Date_Admiss
        {
            get { return date_Admiss; }
            set { date_Admiss = value; }
        }

        public string Inst_Extrac
        {
            get { return inst_Extrac; }
            set { inst_Extrac = value; }
        }

        public string Name_Sampler
        {
            get { return name_Sampler; }
            set { name_Sampler = value; }
        }

        public string Observation
        {
            get { return observation; }
            set { observation = value; }
        }

        public string Key_Sample
        {
            get { return key_Sample; }
            set { key_Sample = value; }
        }

        public int Num_sample
        {
            get { return num_sample; }
            set { num_sample = value; }
        }

        public int Cod_Sample
        {
            get { return cod_Sample; }
            set { cod_Sample = value; }
        }
    }
}
