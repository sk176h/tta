#When /^enters the start-date and end-date as "([^"]*)" and "([^"]*)" respectively$/ do |sdate, edate|
#  enter_date(sdate,edate)
#  clickButton("Plot")
#end


#Given : is present in "comparative_analysis.rb"
#
When /^the user checks the Comparative Analysis of "([^"]*)" with Date-Range between "([^"]*)" and "([^"]*)"$/ do |project,start_date,end_date|
     view_comparative_graph(project,start_date,end_date)
end

Then /^the comparative analysis graph for "([^"]*)" is generated with Date Range between "([^"]*)" and "([^"]*)"$/ do |proj, sdate, edate|
  #verify_if_title_is_displayed("COMPARATIVE ANALYSIS",proj)
  verify_if_date_range_is_displayed(sdate,edate)
  verify_if_visualization_is_displayed(COMPARATIVE_GRAPH_ID)
end