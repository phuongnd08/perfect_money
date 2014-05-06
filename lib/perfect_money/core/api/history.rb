module PerfectMoney::Core::API
	class History < Base
		def service_name
			@service_name ||= "acct/historycsv.asp"
		end

		def get_history(start_date, end_date)
			data = post_request(params(start_date, end_date))
			::CSV.new(data, headers: ['time', 'type', 'batch','currency','amount','fee','payer_acct','payee_acct','payment_id','memo'])
		end

		private

		def params(start_date, end_date)
			startdate = {
					startmonth: start_date[0],
					startday:   start_date[1],
					startyear:  start_date[2]
			}
			enddate   = {
					endmonth: end_date[0],
					endday:   end_date[1],
					endyear:  end_date[2]
			}
			account.auth_hash.merge(startdate).merge(enddate)
		end
	end
end