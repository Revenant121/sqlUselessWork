using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

public class VacancySearchForm : Form
{
    private DataGridView dataGridViewVacancies;
    private Button buttonHire;

    public VacancySearchForm()
    {
        InitializeComponent();
        LoadVacancies();
    }

    private void InitializeComponent()
    {
        this.dataGridViewVacancies = new DataGridView();
        this.buttonHire = new Button();

        // 
        // dataGridViewVacancies
        // 
        this.dataGridViewVacancies.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
        this.dataGridViewVacancies.Location = new Point(13, 13);
        this.dataGridViewVacancies.Name = "dataGridViewVacancies";
        this.dataGridViewVacancies.Size = new Size(775, 375);
        this.dataGridViewVacancies.TabIndex = 0;

        // 
        // buttonHire
        // 
        this.buttonHire.Location = new Point(13, 395);
        this.buttonHire.Name = "buttonHire";
        this.buttonHire.Size = new Size(75, 23);
        this.buttonHire.TabIndex = 1;
        this.buttonHire.Text = "Hire";
        this.buttonHire.UseVisualStyleBackColor = true;
        this.buttonHire.Click += new EventHandler(this.ButtonHire_Click);

        // 
        // VacancySearchForm
        // 
        this.ClientSize = new Size(800, 450);
        this.Controls.Add(this.dataGridViewVacancies);
        this.Controls.Add(this.buttonHire);
        this.Name = "VacancySearchForm";
        this.Text = "Vacancy Search";
    }

    private void LoadVacancies()
    {
        string connectionString = "your_connection_string_here";
        string query = "SELECT * FROM VIEW_вакансии";
        
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            dataGridViewVacancies.DataSource = dataTable;
        }
    }

    private void ButtonHire_Click(object sender, EventArgs e)
    {
        if (dataGridViewVacancies.SelectedRows.Count > 0)
        {
            string department = dataGridViewVacancies.SelectedRows[0].Cells["Подразделение"].Value.ToString();
            string position = dataGridViewVacancies.SelectedRows[0].Cells["Должность"].Value.ToString();

            // Add your logic here to hire an employee for the selected vacancy
            // Example: Open a new form to enter employee details and then update the database
        }
        else
        {
            MessageBox.Show("Please select a vacancy to hire an employee.");
        }
    }
}
