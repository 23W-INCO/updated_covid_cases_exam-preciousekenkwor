## **Global COVID-19 Cases Visualization**

### **Description**

This repository includes Python FastAPI backend and TypeScript/D3.js frontend code for visualizing global COVID-19 cases. The data is sourced from an external API, and the backend serves as a converter to and from FHIR (Fast Healthcare Interoperability Resources) bundles. The frontend utilizes D3.js for data visualization and offers interactive features such as a slider and radio buttons for different views.

### **Backend**

#### **Endpoints:**

- `GET /`: Returns a simple "Hello World" response.
- `GET /get-file`: Retrieves JSON data from a file (`src/assets/covid.json`).
- `POST /converter/convert-to-fhir`: Converts uploaded JSON data to FHIR bundle format.
- `POST /converter/convert-from-fhir`: Converts uploaded FHIR bundle data to JSON format.
- `POST /converter/convert-from-fhir-local`: Converts local JSON data to FHIR bundle format.

#### **How to Use:**

1. Access the root endpoint (`/`) for a basic response.
2. Use `GET /get-file` to retrieve the existing COVID-19 JSON data.
3. Use `POST /converter/convert-to-fhir` to convert uploaded JSON data to FHIR format.
4. Use `POST /converter/convert-from-fhir` to convert uploaded FHIR bundle data to JSON format.
5. Use `POST /converter/convert-from-fhir-local` to convert local JSON data to FHIR bundle format.

#### **Additional Functionality:**

- `check_file_existence`: Function to check the existence of a file in a specified directory.

### **Frontend**

#### **Features:**

- Fetches global COVID-19 data from an external API.
- Processes and aggregates data using D3.js.
- Utilizes a slider for date selection and radio buttons for different data views.
- Implements a play/pause button for interactive animation.
- Displays a bar chart for total cases.

#### **How to Use:**

1. Clone the repository.
2. Install the required dependencies using `npm install`.
3. Run the backend using `uvicorn main:app --reload --host 0.0.0.0 --port 8000`.
4. Run the frontend using `npm run dev`.
5. Access the visualization on `http://localhost:3000` in your browser.

### **Key User Group**

Global health organizations, policymakers, and researchers monitoring the COVID-19 pandemic on a global scale.

### **User Objectives**

1. Understand the global distribution of COVID-19 cases.
2. Analyze trends and patterns over time.
3. Utilize different visualizations for comprehensive insights.

### **Visualization Strategy**

The frontend provides a slider for date selection, allowing users to explore data over time. Radio buttons offer different perspectives, and the play/pause button enables animated visualization. A bar chart complements the heatmap for total cases.

### **Additional Features**

- Box select: Allows users to drag a box for a focused view.
- Pan: Enables moving the entire map for better exploration.
- Hover: Displays tooltips with information about each country.

### **How to Use**

1. Clone the repository.
2. Install the dependencies using `npm install`.
3. Run the backend and frontend.
4. Explore and navigate through the visualization using the provided features.

