#!/bin/bash

ExamFile=/Users/bocal/exam
ExamStatus=0

if [ -f $ExamFile ]
then
	ExamStatus=1
fi

echo iMacExam status=$ExamStatus
