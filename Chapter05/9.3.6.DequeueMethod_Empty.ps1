$queue.Clear()
$queue.Dequeue()

# Expects error:
#
# Exception calling "Dequeue" with "0" argument(s): "Queue empty."
# At line:1 char:1 + $queue.Dequeue()
# + ~~~~~~~~~~~~~~~~
#     + CategoryInfo : NotSpecified: (:) [], MethodInvocationException
#     + FullyQualifiedErrorId : InvalidOperationException