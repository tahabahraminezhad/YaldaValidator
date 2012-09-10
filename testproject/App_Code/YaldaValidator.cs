using System.Linq;
using System.Web.UI.WebControls;

namespace testproject
{
    /// <summary>
    /// validate the file extension, size, and exists of a file in FileUpload Control
    /// </summary>
    public class YaldaValidator : BaseValidator
    {
        string _extensions = "";
        public string Extensions
        {
            get { return _extensions; }
            set { _extensions = value; }
        }

        int _sizeOfTheFileInKb = 1;
        public int SizeOfTheFileInKb
        {
            get { return _sizeOfTheFileInKb; }
            set { _sizeOfTheFileInKb = value; }
        }
        protected override bool EvaluateIsValid()
        {
            var fu = (FileUpload)FindControl(this.ControlToValidate);
            
            string[] ex = _extensions.Split('+');
            if (fu.HasFile && fu.PostedFile.ContentLength <= _sizeOfTheFileInKb * 1024 && ex.Contains(System.IO.Path.GetExtension(fu.PostedFile.FileName)))
            {
                return true;
            }
            return false;
        }
    }

}