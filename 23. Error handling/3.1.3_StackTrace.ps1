$record.Exception.StackTrace

# Expects output:
# at System.Management.Automation.IntOps.Divide(Int32 lhs, Int32 rhs)
# at System.Dynamic.UpdateDelegates.UpdateAndExecute2[T0,T1,TRet](CallSite site, T0 arg0, T1 arg1)
# at System.Management.Automation.Interpreter.DynamicInstruction`3.Run(InterpretedFrame frame)
# at System.Management.Automation.Interpreter.EnterTryCatchFinallyInstruction.Run(InterpretedFrame frame)