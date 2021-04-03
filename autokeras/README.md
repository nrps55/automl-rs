Basic example of using the satellite image classification API. 
```
import autokeras as ak

clf = ak.SatelliteImageClassifier()
clf.fit(X1,y1)
print(clf.evaluate(X2,y2))
results =clf.predict(X2)
```
