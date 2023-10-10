import matplotlib.pyplot as plt
import matplotlib.cm as cm
from scipy.io import loadmat
from numpy import reshape

# Index of the digit to display
i = 0

# Load Matlab data file to python dict structure
mat_data = loadmat('data/zipdata.mat')

# Extract variables of interest
testdata = mat_data['testdata']
X_test = testdata[:,1:]
y_test = testdata[:,0]

# Visualize the i'th digit as an image
plt.subplot(1,1,1);
I = reshape(X_test[i,:],(16,16))
plt.imshow(I, extent=(0,16,0,16), cmap=cm.gray_r);
plt.title('Digit as an image');
plt.show()

#------------------------------------------------

# Index of the digit to display
i = 0

# Load Matlab data file to python dict structure
mat_data = loadmat('data/zipdata.mat')

# Extract variables of interest
X_test = W
y_test = y_01

# Visualize the ith digit as an image

# I = reshape(X_test[i,:],(16,16))
for i in range(10):
    f, (ax_before, ax_after) = plt.subplots(1,2)
    I = reshape(X_test[i,:],(16,16))
    idx = reshape(X_01[i,:],(16,16))
    ax_after.set_title('before');
    ax_after.set_title('before');
    ax_before.set_title('after');
    ax_before.imshow(I, extent=(0,16,0,16), cmap=cm.gray_r);
    ax_after.imshow(idx, extent=(0,16,0,16), cmap=cm.gray_r);
    plt.show()
