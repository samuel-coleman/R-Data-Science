data("OrchardSprays")

maxdec <- which.max(OrchardSprays$decrease)
best <- OrchardSprays[maxdec,]
print(best$treatment)

boxplot(decrease ~ treatment, data=OrchardSprays)