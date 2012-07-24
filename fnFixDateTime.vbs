dim datetime
'datetime = fnDateTime()
datetime = fnFixDateTime(now())

WScript.Echo datetime

'======================================
'======================================
'===Putting the "Fun" in "Functions"===
'======================================
'======================================


Function fnDateTime()
	dim dDate,dMonth,dYear,dDay
	dDate = now()
	dYear = year(dDate)
	dMonth = Month(dDate)
	dDay = day(dDate)
	
	dHour = hour(dDate)
	dMinute = minute(dDate)
	dSecond = Second(dDate)
	
	if len(dMonth) < 2 then 
		dMonth = "0"& dMonth 
	end if
	
	if len(dDay) < 2 then
		dDay = "0"& dDay
	end if
	
	if len(dHour) < 2 then
		dHour = "0" & dHour
	End If
	
	if len(dMinute) < 2 then
		dMinute = "0" & dMinute
	End If
	
	if len(dSecond) < 2 then
		dSecond = "0" & dSecond
	End If
	
	dDate = dYear & dMonth & dDay & "_" & dHour & dMinute & dSecond
	fnDateTime = dDate
End Function


'======================================
'======================================


Function fnFixDateTime(dumbformat)
	dim dDate,dMonth,dYear,dDay
	dDate = dumbformat
	dYear = year(dDate)
	dMonth = Month(dDate)
	dDay = day(dDate)
	
	dHour = hour(dDate)
	dMinute = minute(dDate)
	dSecond = Second(dDate)
	
	if len(dMonth) < 2 then 
		dMonth = "0"& dMonth 
	end if
	
	if len(dDay) < 2 then
		dDay = "0"& dDay
	end if
	
	if len(dHour) < 2 then
		dHour = "0" & dHour
	End If
	
	if len(dMinute) < 2 then
		dMinute = "0" & dMinute
	End If
	
	if len(dSecond) < 2 then
		dSecond = "0" & dSecond
	End If
	
	dDate = dYear & dMonth & dDay & "_" & dHour & dMinute & dSecond
	fnFixDateTime = dDate
End Function


'======================================
'======================================

