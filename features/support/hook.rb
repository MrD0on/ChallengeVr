require "report_builder"
require "date"

at_exit do
    time = Time.now.strftime("%d_%m_%Y")
    @contents = {
        "Data do report" => time,
        "Tipo de teste" => "API"
    }

    ReportBuilder.configure do |config|
        config.report_title = "ChallengeViaCEP"
        config.input_path = "log/report.json"
        config.report_path = "log/report_#{time}"
        config.report_types = [:html]
        config.additional_info = @contents
        config.color = "blue"
end
    ReportBuilder.build_report
end