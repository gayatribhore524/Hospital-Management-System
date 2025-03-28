package com.doctor.servlet;
import java.io.IOException;
import java.io.OutputStream;

import com.dao.AppointmentDAO;
import com.db.DBConnect;
import com.entity.Appointment;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/doctor/GeneratePDFServlet")
public class GeneratePDFServlet extends HttpServlet {
	
	  private static final long serialVersionUID = 1L;

	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        
	        int id = Integer.parseInt(request.getParameter("id"));
	        AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
	        Appointment ap = dao.getAppointmentById(id);

	        if (ap == null) {
	            response.getWriter().println("No Appointment Found");
	            return;
	        }

	        response.setContentType("application/pdf");
	        response.setHeader("Content-Disposition", "attachment; filename=Appointment_Details.pdf");

	        Document document = new Document();
	        try {
	            OutputStream out = response.getOutputStream();
	            PdfWriter.getInstance(document, out);
	            document.open();

	            Font titleFont = new Font(Font.FontFamily.HELVETICA, 18, Font.BOLD);
	            Paragraph title = new Paragraph("Appointment Details", titleFont);
	            title.setAlignment(Element.ALIGN_CENTER);
	            document.add(title);
	            
	            document.add(new Paragraph("\n"));
	            
	            PdfPTable table = new PdfPTable(2);
	            table.setWidthPercentage(100);

	            addTableHeader(table, "Field", "Value");
	            addTableRow(table, "Full Name", ap.getFullName());
	            addTableRow(table, "Gender", ap.getGender());
	            addTableRow(table, "Age", String.valueOf(ap.getAge()));
	            addTableRow(table, "Appointment Date", ap.getAppoinDate());
	            addTableRow(table, "Email", ap.getEmail());
	            addTableRow(table, "Mobile No", ap.getPhNo());
	            addTableRow(table, "Diseases", ap.getDiseases());
	            addTableRow(table, "Status", ap.getStatus());

	            document.add(table);
	            document.close();

	        } catch (DocumentException e) {
	            e.printStackTrace();
	        }
	    }

	    private void addTableHeader(PdfPTable table, String col1, String col2) {
	        PdfPCell header1 = new PdfPCell(new Phrase(col1));
	        PdfPCell header2 = new PdfPCell(new Phrase(col2));
	        table.addCell(header1);
	        table.addCell(header2);
	    }

	    private void addTableRow(PdfPTable table, String col1, String col2) {
	        table.addCell(new PdfPCell(new Phrase(col1)));
	        table.addCell(new PdfPCell(new Phrase(col2)));
	    }

}
