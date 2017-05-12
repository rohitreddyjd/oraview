class OraviewController < ApplicationController


	def display_sql_monitor
		make_connection
		html_content=plsql.DBMS_SQLTUNE.REPORT_SQL_MONITOR(:type=>'ACTIVE',:sql_id=>params[:sqlid],:sql_exec_id=>params[:execid].to_i)
		html_content = html_content.gsub('<head>', '<head><script src="/assets/application.js" data-turbolinks-track="true"></script>') 
		#parsed_xml_string=Hash.from_xml(xml_string)
		respond_to do |format|
			format.html { render :text => html_content }
		close_connection
		end
	end

	def list_monitored_sql
		make_connection
		xml_string=plsql.DBMS_SQLTUNE.report_sql_monitor_list(:type=>'HTML',:active_since_sec=>7200)
		xml_string = xml_string.gsub('<head>', '<head><script src="/assets/application.js" data-turbolinks-track="true"></script>') 
		#parsed_xml_string=Hash.from_xml(xml_string)
		respond_to do |format|
			format.html { render :text => xml_string }
		close_connection
		end
	end


	def display_sql_monitor_sqlid
		make_connection
		xml_string=plsql.DBMS_SQLTUNE.REPORT_SQL_MONITOR(:type=>'ACTIVE',:sql_id=>'3sh5nf5fmcwqc',:sql_exec_id=>16777216,:report_level=>'ALL')
		#xml_string = xml_string.gsub('<head>', '<head><script src="/assets/application.js" data-turbolinks-track="true"></script>') 
		#parsed_xml_string=Hash.from_xml(xml_string)
		respond_to do |format|
			format.html { render :text => xml_string }
		close_connection
		end
	end


	def report_sql_detail
		make_connection
		xml_string=plsql.DBMS_SQLTUNE.REPORT_SQL_DETAIL(:type=>'ACTIVE',:sql_id=>'3wk39pszazrmp',:report_level=>'TYPICAL')
		#xml_string = xml_string.gsub('<head>', '<head><script src="/assets/application.js" data-turbolinks-track="true"></script>') 
		#parsed_xml_string=Hash.from_xml(xml_string)
		respond_to do |format|
			format.html { render :text => xml_string }
		close_connection
		end
	end

	def make_connection
		plsql.connection = OCI8.new("USERNAME","CREDENTIALS","TNS_ENTRY")
	end

	def close_connection
		plsql.logoff
	end
end


