??	
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
?
sequential/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_namesequential/dense/kernel
?
+sequential/dense/kernel/Read/ReadVariableOpReadVariableOpsequential/dense/kernel*
_output_shapes

: *
dtype0
?
sequential/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_namesequential/dense/bias
{
)sequential/dense/bias/Read/ReadVariableOpReadVariableOpsequential/dense/bias*
_output_shapes
: *
dtype0
?
sequential/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: **
shared_namesequential/dense_1/kernel
?
-sequential/dense_1/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_output_shapes

: *
dtype0
?
sequential/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namesequential/dense_1/bias

+sequential/dense_1/bias/Read/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_output_shapes
:*
dtype0
?
sequential/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:**
shared_namesequential/dense_2/kernel
?
-sequential/dense_2/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_2/kernel*
_output_shapes

:*
dtype0
?
sequential/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namesequential/dense_2/bias

+sequential/dense_2/bias/Read/ReadVariableOpReadVariableOpsequential/dense_2/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
?
Adam/sequential/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/sequential/dense/kernel/m
?
2Adam/sequential/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/kernel/m*
_output_shapes

: *
dtype0
?
Adam/sequential/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/sequential/dense/bias/m
?
0Adam/sequential/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/bias/m*
_output_shapes
: *
dtype0
?
 Adam/sequential/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" Adam/sequential/dense_1/kernel/m
?
4Adam/sequential/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/sequential/dense_1/kernel/m*
_output_shapes

: *
dtype0
?
Adam/sequential/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/sequential/dense_1/bias/m
?
2Adam/sequential/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense_1/bias/m*
_output_shapes
:*
dtype0
?
 Adam/sequential/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" Adam/sequential/dense_2/kernel/m
?
4Adam/sequential/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/sequential/dense_2/kernel/m*
_output_shapes

:*
dtype0
?
Adam/sequential/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/sequential/dense_2/bias/m
?
2Adam/sequential/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense_2/bias/m*
_output_shapes
:*
dtype0
?
Adam/sequential/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name Adam/sequential/dense/kernel/v
?
2Adam/sequential/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/kernel/v*
_output_shapes

: *
dtype0
?
Adam/sequential/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/sequential/dense/bias/v
?
0Adam/sequential/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/bias/v*
_output_shapes
: *
dtype0
?
 Adam/sequential/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" Adam/sequential/dense_1/kernel/v
?
4Adam/sequential/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/sequential/dense_1/kernel/v*
_output_shapes

: *
dtype0
?
Adam/sequential/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/sequential/dense_1/bias/v
?
2Adam/sequential/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense_1/bias/v*
_output_shapes
:*
dtype0
?
 Adam/sequential/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" Adam/sequential/dense_2/kernel/v
?
4Adam/sequential/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/sequential/dense_2/kernel/v*
_output_shapes

:*
dtype0
?
Adam/sequential/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/sequential/dense_2/bias/v
?
2Adam/sequential/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense_2/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?+
value?+B?+ B?+
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
_build_input_shape
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
x
_feature_columns

_resources
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
?
$iter

%beta_1

&beta_2
	'decay
(learning_ratemSmTmUmVmWmXvYvZv[v\v]v^
 
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
?
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
	regularization_losses
 
 
 
 
 
 
?
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
ca
VARIABLE_VALUEsequential/dense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEsequential/dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
ec
VARIABLE_VALUEsequential/dense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEsequential/dense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
ec
VARIABLE_VALUEsequential/dense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEsequential/dense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
 	variables
!trainable_variables
"regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

B0
C1
D2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Etotal
	Fcount
G	variables
H	keras_api
D
	Itotal
	Jcount
K
_fn_kwargs
L	variables
M	keras_api
D
	Ntotal
	Ocount
P
_fn_kwargs
Q	variables
R	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

E0
F1

G	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

I0
J1

L	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1

Q	variables
??
VARIABLE_VALUEAdam/sequential/dense/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/sequential/dense_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/sequential/dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/sequential/dense_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/sequential/dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
 serving_default_dropoff_latitudePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
|
!serving_default_dropoff_longitudePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
z
serving_default_passenger_countPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
z
serving_default_pickup_latitudePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
{
 serving_default_pickup_longitudePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_dropoff_latitude!serving_default_dropoff_longitudeserving_default_passenger_countserving_default_pickup_latitude serving_default_pickup_longitudesequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/biassequential/dense_2/kernelsequential/dense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_10194
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+sequential/dense/kernel/Read/ReadVariableOp)sequential/dense/bias/Read/ReadVariableOp-sequential/dense_1/kernel/Read/ReadVariableOp+sequential/dense_1/bias/Read/ReadVariableOp-sequential/dense_2/kernel/Read/ReadVariableOp+sequential/dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp2Adam/sequential/dense/kernel/m/Read/ReadVariableOp0Adam/sequential/dense/bias/m/Read/ReadVariableOp4Adam/sequential/dense_1/kernel/m/Read/ReadVariableOp2Adam/sequential/dense_1/bias/m/Read/ReadVariableOp4Adam/sequential/dense_2/kernel/m/Read/ReadVariableOp2Adam/sequential/dense_2/bias/m/Read/ReadVariableOp2Adam/sequential/dense/kernel/v/Read/ReadVariableOp0Adam/sequential/dense/bias/v/Read/ReadVariableOp4Adam/sequential/dense_1/kernel/v/Read/ReadVariableOp2Adam/sequential/dense_1/bias/v/Read/ReadVariableOp4Adam/sequential/dense_2/kernel/v/Read/ReadVariableOp2Adam/sequential/dense_2/bias/v/Read/ReadVariableOpConst**
Tin#
!2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_10667
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamesequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/biassequential/dense_2/kernelsequential/dense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2Adam/sequential/dense/kernel/mAdam/sequential/dense/bias/m Adam/sequential/dense_1/kernel/mAdam/sequential/dense_1/bias/m Adam/sequential/dense_2/kernel/mAdam/sequential/dense_2/bias/mAdam/sequential/dense/kernel/vAdam/sequential/dense/bias/v Adam/sequential/dense_1/kernel/vAdam/sequential/dense_1/bias/v Adam/sequential/dense_2/kernel/vAdam/sequential/dense_2/bias/v*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_10764??
?
?
*__inference_sequential_layer_call_fn_10215
inputs_dropoff_latitude
inputs_dropoff_longitude
inputs_passenger_count
inputs_pickup_latitude
inputs_pickup_longitude
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_dropoff_latitudeinputs_dropoff_longitudeinputs_passenger_countinputs_pickup_latitudeinputs_pickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_9916o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinputs/dropoff_latitude:]Y
#
_output_shapes
:?????????
2
_user_specified_nameinputs/dropoff_longitude:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/passenger_count:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/pickup_latitude:\X
#
_output_shapes
:?????????
1
_user_specified_nameinputs/pickup_longitude
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_10165
dropoff_latitude
dropoff_longitude
passenger_count
pickup_latitude
pickup_longitude
dense_10149: 
dense_10151: 
dense_1_10154: 
dense_1_10156:
dense_2_10159:
dense_2_10161:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
dense_features/PartitionedCallPartitionedCalldropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitude*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_features_layer_call_and_return_conditional_losses_10027?
dense/StatefulPartitionedCallStatefulPartitionedCall'dense_features/PartitionedCall:output:0dense_10149dense_10151*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_9876?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_10154dense_1_10156*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_9893?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_10159dense_2_10161*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_9909w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????:?????????:?????????:?????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:U Q
#
_output_shapes
:?????????
*
_user_specified_namedropoff_latitude:VR
#
_output_shapes
:?????????
+
_user_specified_namedropoff_longitude:TP
#
_output_shapes
:?????????
)
_user_specified_namepassenger_count:TP
#
_output_shapes
:?????????
)
_user_specified_namepickup_latitude:UQ
#
_output_shapes
:?????????
*
_user_specified_namepickup_longitude
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_10141
dropoff_latitude
dropoff_longitude
passenger_count
pickup_latitude
pickup_longitude
dense_10125: 
dense_10127: 
dense_1_10130: 
dense_1_10132:
dense_2_10135:
dense_2_10137:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
dense_features/PartitionedCallPartitionedCalldropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitude*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_features_layer_call_and_return_conditional_losses_9863?
dense/StatefulPartitionedCallStatefulPartitionedCall'dense_features/PartitionedCall:output:0dense_10125dense_10127*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_9876?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_10130dense_1_10132*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_9893?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_10135dense_2_10137*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_9909w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????:?????????:?????????:?????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:U Q
#
_output_shapes
:?????????
*
_user_specified_namedropoff_latitude:VR
#
_output_shapes
:?????????
+
_user_specified_namedropoff_longitude:TP
#
_output_shapes
:?????????
)
_user_specified_namepassenger_count:TP
#
_output_shapes
:?????????
)
_user_specified_namepickup_latitude:UQ
#
_output_shapes
:?????????
*
_user_specified_namepickup_longitude
?
?
'__inference_dense_2_layer_call_fn_10543

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_9909o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?Y
?
E__inference_sequential_layer_call_and_return_conditional_losses_10306
inputs_dropoff_latitude
inputs_dropoff_longitude
inputs_passenger_count
inputs_pickup_latitude
inputs_pickup_longitude6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOpy
.dense_features/dropoff_latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features/dropoff_latitude/ExpandDims
ExpandDimsinputs_dropoff_latitude7dense_features/dropoff_latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
%dense_features/dropoff_latitude/ShapeShape3dense_features/dropoff_latitude/ExpandDims:output:0*
T0*
_output_shapes
:}
3dense_features/dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features/dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features/dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features/dropoff_latitude/strided_sliceStridedSlice.dense_features/dropoff_latitude/Shape:output:0<dense_features/dropoff_latitude/strided_slice/stack:output:0>dense_features/dropoff_latitude/strided_slice/stack_1:output:0>dense_features/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/dense_features/dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
-dense_features/dropoff_latitude/Reshape/shapePack6dense_features/dropoff_latitude/strided_slice:output:08dense_features/dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features/dropoff_latitude/ReshapeReshape3dense_features/dropoff_latitude/ExpandDims:output:06dense_features/dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????z
/dense_features/dropoff_longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
+dense_features/dropoff_longitude/ExpandDims
ExpandDimsinputs_dropoff_longitude8dense_features/dropoff_longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
&dense_features/dropoff_longitude/ShapeShape4dense_features/dropoff_longitude/ExpandDims:output:0*
T0*
_output_shapes
:~
4dense_features/dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6dense_features/dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6dense_features/dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.dense_features/dropoff_longitude/strided_sliceStridedSlice/dense_features/dropoff_longitude/Shape:output:0=dense_features/dropoff_longitude/strided_slice/stack:output:0?dense_features/dropoff_longitude/strided_slice/stack_1:output:0?dense_features/dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0dense_features/dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
.dense_features/dropoff_longitude/Reshape/shapePack7dense_features/dropoff_longitude/strided_slice:output:09dense_features/dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
(dense_features/dropoff_longitude/ReshapeReshape4dense_features/dropoff_longitude/ExpandDims:output:07dense_features/dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????x
-dense_features/pickup_latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features/pickup_latitude/ExpandDims
ExpandDimsinputs_pickup_latitude6dense_features/pickup_latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
$dense_features/pickup_latitude/ShapeShape2dense_features/pickup_latitude/ExpandDims:output:0*
T0*
_output_shapes
:|
2dense_features/pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features/pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features/pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features/pickup_latitude/strided_sliceStridedSlice-dense_features/pickup_latitude/Shape:output:0;dense_features/pickup_latitude/strided_slice/stack:output:0=dense_features/pickup_latitude/strided_slice/stack_1:output:0=dense_features/pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features/pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,dense_features/pickup_latitude/Reshape/shapePack5dense_features/pickup_latitude/strided_slice:output:07dense_features/pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features/pickup_latitude/ReshapeReshape2dense_features/pickup_latitude/ExpandDims:output:05dense_features/pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????y
.dense_features/pickup_longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features/pickup_longitude/ExpandDims
ExpandDimsinputs_pickup_longitude7dense_features/pickup_longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
%dense_features/pickup_longitude/ShapeShape3dense_features/pickup_longitude/ExpandDims:output:0*
T0*
_output_shapes
:}
3dense_features/pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features/pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features/pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features/pickup_longitude/strided_sliceStridedSlice.dense_features/pickup_longitude/Shape:output:0<dense_features/pickup_longitude/strided_slice/stack:output:0>dense_features/pickup_longitude/strided_slice/stack_1:output:0>dense_features/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/dense_features/pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
-dense_features/pickup_longitude/Reshape/shapePack6dense_features/pickup_longitude/strided_slice:output:08dense_features/pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features/pickup_longitude/ReshapeReshape3dense_features/pickup_longitude/ExpandDims:output:06dense_features/pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????e
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/concatConcatV20dense_features/dropoff_latitude/Reshape:output:01dense_features/dropoff_longitude/Reshape:output:0/dense_features/pickup_latitude/Reshape:output:00dense_features/pickup_longitude/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*'
_output_shapes
:??????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense/MatMulMatMuldense_features/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? \

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????:?????????:?????????:?????????: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinputs/dropoff_latitude:]Y
#
_output_shapes
:?????????
2
_user_specified_nameinputs/dropoff_longitude:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/passenger_count:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/pickup_latitude:\X
#
_output_shapes
:?????????
1
_user_specified_nameinputs/pickup_longitude
?

?
.__inference_dense_features_layer_call_fn_10394
features_dropoff_latitude
features_dropoff_longitude
features_passenger_count
features_pickup_latitude
features_pickup_longitude
identity?
PartitionedCallPartitionedCallfeatures_dropoff_latitudefeatures_dropoff_longitudefeatures_passenger_countfeatures_pickup_latitudefeatures_pickup_longitude*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_features_layer_call_and_return_conditional_losses_10027`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????:?????????:?????????:?????????:^ Z
#
_output_shapes
:?????????
3
_user_specified_namefeatures/dropoff_latitude:_[
#
_output_shapes
:?????????
4
_user_specified_namefeatures/dropoff_longitude:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/passenger_count:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/pickup_latitude:^Z
#
_output_shapes
:?????????
3
_user_specified_namefeatures/pickup_longitude
?
?
*__inference_sequential_layer_call_fn_10117
dropoff_latitude
dropoff_longitude
passenger_count
pickup_latitude
pickup_longitude
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10081o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
#
_output_shapes
:?????????
*
_user_specified_namedropoff_latitude:VR
#
_output_shapes
:?????????
+
_user_specified_namedropoff_longitude:TP
#
_output_shapes
:?????????
)
_user_specified_namepassenger_count:TP
#
_output_shapes
:?????????
)
_user_specified_namepickup_latitude:UQ
#
_output_shapes
:?????????
*
_user_specified_namepickup_longitude
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_9916

inputs
inputs_1
inputs_2
inputs_3
inputs_4

dense_9877: 

dense_9879: 
dense_1_9894: 
dense_1_9896:
dense_2_9910:
dense_2_9912:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
dense_features/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_features_layer_call_and_return_conditional_losses_9863?
dense/StatefulPartitionedCallStatefulPartitionedCall'dense_features/PartitionedCall:output:0
dense_9877
dense_9879*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_9876?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_9894dense_1_9896*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_9893?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_9910dense_2_9912*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_9909w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????:?????????:?????????:?????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_9931
dropoff_latitude
dropoff_longitude
passenger_count
pickup_latitude
pickup_longitude
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_9916o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
#
_output_shapes
:?????????
*
_user_specified_namedropoff_latitude:VR
#
_output_shapes
:?????????
+
_user_specified_namedropoff_longitude:TP
#
_output_shapes
:?????????
)
_user_specified_namepassenger_count:TP
#
_output_shapes
:?????????
)
_user_specified_namepickup_latitude:UQ
#
_output_shapes
:?????????
*
_user_specified_namepickup_longitude
?5
?
I__inference_dense_features_layer_call_and_return_conditional_losses_10027
features

features_1

features_2

features_3

features_4
identityj
dropoff_latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dropoff_latitude/ExpandDims
ExpandDimsfeatures(dropoff_latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????j
dropoff_latitude/ShapeShape$dropoff_latitude/ExpandDims:output:0*
T0*
_output_shapes
:n
$dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
dropoff_latitude/strided_sliceStridedSlicedropoff_latitude/Shape:output:0-dropoff_latitude/strided_slice/stack:output:0/dropoff_latitude/strided_slice/stack_1:output:0/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropoff_latitude/Reshape/shapePack'dropoff_latitude/strided_slice:output:0)dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dropoff_latitude/ReshapeReshape$dropoff_latitude/ExpandDims:output:0'dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????k
 dropoff_longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dropoff_longitude/ExpandDims
ExpandDims
features_1)dropoff_longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????l
dropoff_longitude/ShapeShape%dropoff_longitude/ExpandDims:output:0*
T0*
_output_shapes
:o
%dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
dropoff_longitude/strided_sliceStridedSlice dropoff_longitude/Shape:output:0.dropoff_longitude/strided_slice/stack:output:00dropoff_longitude/strided_slice/stack_1:output:00dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropoff_longitude/Reshape/shapePack(dropoff_longitude/strided_slice:output:0*dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dropoff_longitude/ReshapeReshape%dropoff_longitude/ExpandDims:output:0(dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
pickup_latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
pickup_latitude/ExpandDims
ExpandDims
features_3'pickup_latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????h
pickup_latitude/ShapeShape#pickup_latitude/ExpandDims:output:0*
T0*
_output_shapes
:m
#pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
pickup_latitude/strided_sliceStridedSlicepickup_latitude/Shape:output:0,pickup_latitude/strided_slice/stack:output:0.pickup_latitude/strided_slice/stack_1:output:0.pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
pickup_latitude/Reshape/shapePack&pickup_latitude/strided_slice:output:0(pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
pickup_latitude/ReshapeReshape#pickup_latitude/ExpandDims:output:0&pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
pickup_longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
pickup_longitude/ExpandDims
ExpandDims
features_4(pickup_longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????j
pickup_longitude/ShapeShape$pickup_longitude/ExpandDims:output:0*
T0*
_output_shapes
:n
$pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
pickup_longitude/strided_sliceStridedSlicepickup_longitude/Shape:output:0-pickup_longitude/strided_slice/stack:output:0/pickup_longitude/strided_slice/stack_1:output:0/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
pickup_longitude/Reshape/shapePack'pickup_longitude/strided_slice:output:0)pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
pickup_longitude/ReshapeReshape$pickup_longitude/ExpandDims:output:0'pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2!dropoff_latitude/Reshape:output:0"dropoff_longitude/Reshape:output:0 pickup_latitude/Reshape:output:0!pickup_longitude/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????:?????????:?????????:?????????:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features
?
?
#__inference_signature_wrapper_10194
dropoff_latitude
dropoff_longitude
passenger_count
pickup_latitude
pickup_longitude
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_9797o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
#
_output_shapes
:?????????
*
_user_specified_namedropoff_latitude:VR
#
_output_shapes
:?????????
+
_user_specified_namedropoff_longitude:TP
#
_output_shapes
:?????????
)
_user_specified_namepassenger_count:TP
#
_output_shapes
:?????????
)
_user_specified_namepickup_latitude:UQ
#
_output_shapes
:?????????
*
_user_specified_namepickup_longitude
?7
?
I__inference_dense_features_layer_call_and_return_conditional_losses_10494
features_dropoff_latitude
features_dropoff_longitude
features_passenger_count
features_pickup_latitude
features_pickup_longitude
identityj
dropoff_latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dropoff_latitude/ExpandDims
ExpandDimsfeatures_dropoff_latitude(dropoff_latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????j
dropoff_latitude/ShapeShape$dropoff_latitude/ExpandDims:output:0*
T0*
_output_shapes
:n
$dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
dropoff_latitude/strided_sliceStridedSlicedropoff_latitude/Shape:output:0-dropoff_latitude/strided_slice/stack:output:0/dropoff_latitude/strided_slice/stack_1:output:0/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropoff_latitude/Reshape/shapePack'dropoff_latitude/strided_slice:output:0)dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dropoff_latitude/ReshapeReshape$dropoff_latitude/ExpandDims:output:0'dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????k
 dropoff_longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dropoff_longitude/ExpandDims
ExpandDimsfeatures_dropoff_longitude)dropoff_longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????l
dropoff_longitude/ShapeShape%dropoff_longitude/ExpandDims:output:0*
T0*
_output_shapes
:o
%dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
dropoff_longitude/strided_sliceStridedSlice dropoff_longitude/Shape:output:0.dropoff_longitude/strided_slice/stack:output:00dropoff_longitude/strided_slice/stack_1:output:00dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropoff_longitude/Reshape/shapePack(dropoff_longitude/strided_slice:output:0*dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dropoff_longitude/ReshapeReshape%dropoff_longitude/ExpandDims:output:0(dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
pickup_latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
pickup_latitude/ExpandDims
ExpandDimsfeatures_pickup_latitude'pickup_latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????h
pickup_latitude/ShapeShape#pickup_latitude/ExpandDims:output:0*
T0*
_output_shapes
:m
#pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
pickup_latitude/strided_sliceStridedSlicepickup_latitude/Shape:output:0,pickup_latitude/strided_slice/stack:output:0.pickup_latitude/strided_slice/stack_1:output:0.pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
pickup_latitude/Reshape/shapePack&pickup_latitude/strided_slice:output:0(pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
pickup_latitude/ReshapeReshape#pickup_latitude/ExpandDims:output:0&pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
pickup_longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
pickup_longitude/ExpandDims
ExpandDimsfeatures_pickup_longitude(pickup_longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????j
pickup_longitude/ShapeShape$pickup_longitude/ExpandDims:output:0*
T0*
_output_shapes
:n
$pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
pickup_longitude/strided_sliceStridedSlicepickup_longitude/Shape:output:0-pickup_longitude/strided_slice/stack:output:0/pickup_longitude/strided_slice/stack_1:output:0/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
pickup_longitude/Reshape/shapePack'pickup_longitude/strided_slice:output:0)pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
pickup_longitude/ReshapeReshape$pickup_longitude/ExpandDims:output:0'pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2!dropoff_latitude/Reshape:output:0"dropoff_longitude/Reshape:output:0 pickup_latitude/Reshape:output:0!pickup_longitude/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????:?????????:?????????:?????????:^ Z
#
_output_shapes
:?????????
3
_user_specified_namefeatures/dropoff_latitude:_[
#
_output_shapes
:?????????
4
_user_specified_namefeatures/dropoff_longitude:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/passenger_count:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/pickup_latitude:^Z
#
_output_shapes
:?????????
3
_user_specified_namefeatures/pickup_longitude
?
?
*__inference_sequential_layer_call_fn_10236
inputs_dropoff_latitude
inputs_dropoff_longitude
inputs_passenger_count
inputs_pickup_latitude
inputs_pickup_longitude
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_dropoff_latitudeinputs_dropoff_longitudeinputs_passenger_countinputs_pickup_latitudeinputs_pickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10081o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinputs/dropoff_latitude:]Y
#
_output_shapes
:?????????
2
_user_specified_nameinputs/dropoff_longitude:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/passenger_count:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/pickup_latitude:\X
#
_output_shapes
:?????????
1
_user_specified_nameinputs/pickup_longitude
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_10081

inputs
inputs_1
inputs_2
inputs_3
inputs_4
dense_10065: 
dense_10067: 
dense_1_10070: 
dense_1_10072:
dense_2_10075:
dense_2_10077:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
dense_features/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_features_layer_call_and_return_conditional_losses_10027?
dense/StatefulPartitionedCallStatefulPartitionedCall'dense_features/PartitionedCall:output:0dense_10065dense_10067*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_9876?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_10070dense_1_10072*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_9893?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_10075dense_2_10077*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_9909w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????:?????????:?????????:?????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
?__inference_dense_layer_call_and_return_conditional_losses_9876

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?7
?
I__inference_dense_features_layer_call_and_return_conditional_losses_10444
features_dropoff_latitude
features_dropoff_longitude
features_passenger_count
features_pickup_latitude
features_pickup_longitude
identityj
dropoff_latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dropoff_latitude/ExpandDims
ExpandDimsfeatures_dropoff_latitude(dropoff_latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????j
dropoff_latitude/ShapeShape$dropoff_latitude/ExpandDims:output:0*
T0*
_output_shapes
:n
$dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
dropoff_latitude/strided_sliceStridedSlicedropoff_latitude/Shape:output:0-dropoff_latitude/strided_slice/stack:output:0/dropoff_latitude/strided_slice/stack_1:output:0/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropoff_latitude/Reshape/shapePack'dropoff_latitude/strided_slice:output:0)dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dropoff_latitude/ReshapeReshape$dropoff_latitude/ExpandDims:output:0'dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????k
 dropoff_longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dropoff_longitude/ExpandDims
ExpandDimsfeatures_dropoff_longitude)dropoff_longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????l
dropoff_longitude/ShapeShape%dropoff_longitude/ExpandDims:output:0*
T0*
_output_shapes
:o
%dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
dropoff_longitude/strided_sliceStridedSlice dropoff_longitude/Shape:output:0.dropoff_longitude/strided_slice/stack:output:00dropoff_longitude/strided_slice/stack_1:output:00dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropoff_longitude/Reshape/shapePack(dropoff_longitude/strided_slice:output:0*dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dropoff_longitude/ReshapeReshape%dropoff_longitude/ExpandDims:output:0(dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
pickup_latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
pickup_latitude/ExpandDims
ExpandDimsfeatures_pickup_latitude'pickup_latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????h
pickup_latitude/ShapeShape#pickup_latitude/ExpandDims:output:0*
T0*
_output_shapes
:m
#pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
pickup_latitude/strided_sliceStridedSlicepickup_latitude/Shape:output:0,pickup_latitude/strided_slice/stack:output:0.pickup_latitude/strided_slice/stack_1:output:0.pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
pickup_latitude/Reshape/shapePack&pickup_latitude/strided_slice:output:0(pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
pickup_latitude/ReshapeReshape#pickup_latitude/ExpandDims:output:0&pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
pickup_longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
pickup_longitude/ExpandDims
ExpandDimsfeatures_pickup_longitude(pickup_longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????j
pickup_longitude/ShapeShape$pickup_longitude/ExpandDims:output:0*
T0*
_output_shapes
:n
$pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
pickup_longitude/strided_sliceStridedSlicepickup_longitude/Shape:output:0-pickup_longitude/strided_slice/stack:output:0/pickup_longitude/strided_slice/stack_1:output:0/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
pickup_longitude/Reshape/shapePack'pickup_longitude/strided_slice:output:0)pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
pickup_longitude/ReshapeReshape$pickup_longitude/ExpandDims:output:0'pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2!dropoff_latitude/Reshape:output:0"dropoff_longitude/Reshape:output:0 pickup_latitude/Reshape:output:0!pickup_longitude/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????:?????????:?????????:?????????:^ Z
#
_output_shapes
:?????????
3
_user_specified_namefeatures/dropoff_latitude:_[
#
_output_shapes
:?????????
4
_user_specified_namefeatures/dropoff_longitude:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/passenger_count:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/pickup_latitude:^Z
#
_output_shapes
:?????????
3
_user_specified_namefeatures/pickup_longitude
?

?
.__inference_dense_features_layer_call_fn_10385
features_dropoff_latitude
features_dropoff_longitude
features_passenger_count
features_pickup_latitude
features_pickup_longitude
identity?
PartitionedCallPartitionedCallfeatures_dropoff_latitudefeatures_dropoff_longitudefeatures_passenger_countfeatures_pickup_latitudefeatures_pickup_longitude*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_features_layer_call_and_return_conditional_losses_9863`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????:?????????:?????????:?????????:^ Z
#
_output_shapes
:?????????
3
_user_specified_namefeatures/dropoff_latitude:_[
#
_output_shapes
:?????????
4
_user_specified_namefeatures/dropoff_longitude:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/passenger_count:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/pickup_latitude:^Z
#
_output_shapes
:?????????
3
_user_specified_namefeatures/pickup_longitude
?Y
?
E__inference_sequential_layer_call_and_return_conditional_losses_10376
inputs_dropoff_latitude
inputs_dropoff_longitude
inputs_passenger_count
inputs_pickup_latitude
inputs_pickup_longitude6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOpy
.dense_features/dropoff_latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features/dropoff_latitude/ExpandDims
ExpandDimsinputs_dropoff_latitude7dense_features/dropoff_latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
%dense_features/dropoff_latitude/ShapeShape3dense_features/dropoff_latitude/ExpandDims:output:0*
T0*
_output_shapes
:}
3dense_features/dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features/dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features/dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features/dropoff_latitude/strided_sliceStridedSlice.dense_features/dropoff_latitude/Shape:output:0<dense_features/dropoff_latitude/strided_slice/stack:output:0>dense_features/dropoff_latitude/strided_slice/stack_1:output:0>dense_features/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/dense_features/dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
-dense_features/dropoff_latitude/Reshape/shapePack6dense_features/dropoff_latitude/strided_slice:output:08dense_features/dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features/dropoff_latitude/ReshapeReshape3dense_features/dropoff_latitude/ExpandDims:output:06dense_features/dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????z
/dense_features/dropoff_longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
+dense_features/dropoff_longitude/ExpandDims
ExpandDimsinputs_dropoff_longitude8dense_features/dropoff_longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
&dense_features/dropoff_longitude/ShapeShape4dense_features/dropoff_longitude/ExpandDims:output:0*
T0*
_output_shapes
:~
4dense_features/dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6dense_features/dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6dense_features/dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.dense_features/dropoff_longitude/strided_sliceStridedSlice/dense_features/dropoff_longitude/Shape:output:0=dense_features/dropoff_longitude/strided_slice/stack:output:0?dense_features/dropoff_longitude/strided_slice/stack_1:output:0?dense_features/dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0dense_features/dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
.dense_features/dropoff_longitude/Reshape/shapePack7dense_features/dropoff_longitude/strided_slice:output:09dense_features/dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
(dense_features/dropoff_longitude/ReshapeReshape4dense_features/dropoff_longitude/ExpandDims:output:07dense_features/dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????x
-dense_features/pickup_latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features/pickup_latitude/ExpandDims
ExpandDimsinputs_pickup_latitude6dense_features/pickup_latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
$dense_features/pickup_latitude/ShapeShape2dense_features/pickup_latitude/ExpandDims:output:0*
T0*
_output_shapes
:|
2dense_features/pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features/pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features/pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features/pickup_latitude/strided_sliceStridedSlice-dense_features/pickup_latitude/Shape:output:0;dense_features/pickup_latitude/strided_slice/stack:output:0=dense_features/pickup_latitude/strided_slice/stack_1:output:0=dense_features/pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features/pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,dense_features/pickup_latitude/Reshape/shapePack5dense_features/pickup_latitude/strided_slice:output:07dense_features/pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features/pickup_latitude/ReshapeReshape2dense_features/pickup_latitude/ExpandDims:output:05dense_features/pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????y
.dense_features/pickup_longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features/pickup_longitude/ExpandDims
ExpandDimsinputs_pickup_longitude7dense_features/pickup_longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
%dense_features/pickup_longitude/ShapeShape3dense_features/pickup_longitude/ExpandDims:output:0*
T0*
_output_shapes
:}
3dense_features/pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features/pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features/pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features/pickup_longitude/strided_sliceStridedSlice.dense_features/pickup_longitude/Shape:output:0<dense_features/pickup_longitude/strided_slice/stack:output:0>dense_features/pickup_longitude/strided_slice/stack_1:output:0>dense_features/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/dense_features/pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
-dense_features/pickup_longitude/Reshape/shapePack6dense_features/pickup_longitude/strided_slice:output:08dense_features/pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features/pickup_longitude/ReshapeReshape3dense_features/pickup_longitude/ExpandDims:output:06dense_features/pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????e
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/concatConcatV20dense_features/dropoff_latitude/Reshape:output:01dense_features/dropoff_longitude/Reshape:output:0/dense_features/pickup_latitude/Reshape:output:00dense_features/pickup_longitude/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*'
_output_shapes
:??????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense/MatMulMatMuldense_features/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? \

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????:?????????:?????????:?????????: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinputs/dropoff_latitude:]Y
#
_output_shapes
:?????????
2
_user_specified_nameinputs/dropoff_longitude:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/passenger_count:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/pickup_latitude:\X
#
_output_shapes
:?????????
1
_user_specified_nameinputs/pickup_longitude
?
?
%__inference_dense_layer_call_fn_10503

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_9876o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?5
?
H__inference_dense_features_layer_call_and_return_conditional_losses_9863
features

features_1

features_2

features_3

features_4
identityj
dropoff_latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dropoff_latitude/ExpandDims
ExpandDimsfeatures(dropoff_latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????j
dropoff_latitude/ShapeShape$dropoff_latitude/ExpandDims:output:0*
T0*
_output_shapes
:n
$dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
dropoff_latitude/strided_sliceStridedSlicedropoff_latitude/Shape:output:0-dropoff_latitude/strided_slice/stack:output:0/dropoff_latitude/strided_slice/stack_1:output:0/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropoff_latitude/Reshape/shapePack'dropoff_latitude/strided_slice:output:0)dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dropoff_latitude/ReshapeReshape$dropoff_latitude/ExpandDims:output:0'dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????k
 dropoff_longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dropoff_longitude/ExpandDims
ExpandDims
features_1)dropoff_longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????l
dropoff_longitude/ShapeShape%dropoff_longitude/ExpandDims:output:0*
T0*
_output_shapes
:o
%dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
dropoff_longitude/strided_sliceStridedSlice dropoff_longitude/Shape:output:0.dropoff_longitude/strided_slice/stack:output:00dropoff_longitude/strided_slice/stack_1:output:00dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
dropoff_longitude/Reshape/shapePack(dropoff_longitude/strided_slice:output:0*dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dropoff_longitude/ReshapeReshape%dropoff_longitude/ExpandDims:output:0(dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
pickup_latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
pickup_latitude/ExpandDims
ExpandDims
features_3'pickup_latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????h
pickup_latitude/ShapeShape#pickup_latitude/ExpandDims:output:0*
T0*
_output_shapes
:m
#pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
pickup_latitude/strided_sliceStridedSlicepickup_latitude/Shape:output:0,pickup_latitude/strided_slice/stack:output:0.pickup_latitude/strided_slice/stack_1:output:0.pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
pickup_latitude/Reshape/shapePack&pickup_latitude/strided_slice:output:0(pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
pickup_latitude/ReshapeReshape#pickup_latitude/ExpandDims:output:0&pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
pickup_longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
pickup_longitude/ExpandDims
ExpandDims
features_4(pickup_longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????j
pickup_longitude/ShapeShape$pickup_longitude/ExpandDims:output:0*
T0*
_output_shapes
:n
$pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
pickup_longitude/strided_sliceStridedSlicepickup_longitude/Shape:output:0-pickup_longitude/strided_slice/stack:output:0/pickup_longitude/strided_slice/stack_1:output:0/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
pickup_longitude/Reshape/shapePack'pickup_longitude/strided_slice:output:0)pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
pickup_longitude/ReshapeReshape$pickup_longitude/ExpandDims:output:0'pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2!dropoff_latitude/Reshape:output:0"dropoff_longitude/Reshape:output:0 pickup_latitude/Reshape:output:0!pickup_longitude/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:?????????:?????????:?????????:?????????:?????????:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features
?

?
B__inference_dense_1_layer_call_and_return_conditional_losses_10534

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
A__inference_dense_2_layer_call_and_return_conditional_losses_9909

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?v
?
!__inference__traced_restore_10764
file_prefix:
(assignvariableop_sequential_dense_kernel: 6
(assignvariableop_1_sequential_dense_bias: >
,assignvariableop_2_sequential_dense_1_kernel: 8
*assignvariableop_3_sequential_dense_1_bias:>
,assignvariableop_4_sequential_dense_2_kernel:8
*assignvariableop_5_sequential_dense_2_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: %
assignvariableop_15_total_2: %
assignvariableop_16_count_2: D
2assignvariableop_17_adam_sequential_dense_kernel_m: >
0assignvariableop_18_adam_sequential_dense_bias_m: F
4assignvariableop_19_adam_sequential_dense_1_kernel_m: @
2assignvariableop_20_adam_sequential_dense_1_bias_m:F
4assignvariableop_21_adam_sequential_dense_2_kernel_m:@
2assignvariableop_22_adam_sequential_dense_2_bias_m:D
2assignvariableop_23_adam_sequential_dense_kernel_v: >
0assignvariableop_24_adam_sequential_dense_bias_v: F
4assignvariableop_25_adam_sequential_dense_1_kernel_v: @
2assignvariableop_26_adam_sequential_dense_1_bias_v:F
4assignvariableop_27_adam_sequential_dense_2_kernel_v:@
2assignvariableop_28_adam_sequential_dense_2_bias_v:
identity_30??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp(assignvariableop_sequential_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp(assignvariableop_1_sequential_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp,assignvariableop_2_sequential_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp*assignvariableop_3_sequential_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp,assignvariableop_4_sequential_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp*assignvariableop_5_sequential_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp2assignvariableop_17_adam_sequential_dense_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp0assignvariableop_18_adam_sequential_dense_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adam_sequential_dense_1_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_sequential_dense_1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_sequential_dense_2_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp2assignvariableop_22_adam_sequential_dense_2_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp2assignvariableop_23_adam_sequential_dense_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp0assignvariableop_24_adam_sequential_dense_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_sequential_dense_1_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_sequential_dense_1_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_sequential_dense_2_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp2assignvariableop_28_adam_sequential_dense_2_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_30IdentityIdentity_29:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_30Identity_30:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?

?
A__inference_dense_1_layer_call_and_return_conditional_losses_9893

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?e
?
__inference__wrapped_model_9797
dropoff_latitude
dropoff_longitude
passenger_count
pickup_latitude
pickup_longitudeA
/sequential_dense_matmul_readvariableop_resource: >
0sequential_dense_biasadd_readvariableop_resource: C
1sequential_dense_1_matmul_readvariableop_resource: @
2sequential_dense_1_biasadd_readvariableop_resource:C
1sequential_dense_2_matmul_readvariableop_resource:@
2sequential_dense_2_biasadd_readvariableop_resource:
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?)sequential/dense_2/BiasAdd/ReadVariableOp?(sequential/dense_2/MatMul/ReadVariableOp?
9sequential/dense_features/dropoff_latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
5sequential/dense_features/dropoff_latitude/ExpandDims
ExpandDimsdropoff_latitudeBsequential/dense_features/dropoff_latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
0sequential/dense_features/dropoff_latitude/ShapeShape>sequential/dense_features/dropoff_latitude/ExpandDims:output:0*
T0*
_output_shapes
:?
>sequential/dense_features/dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@sequential/dense_features/dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@sequential/dense_features/dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/dense_features/dropoff_latitude/strided_sliceStridedSlice9sequential/dense_features/dropoff_latitude/Shape:output:0Gsequential/dense_features/dropoff_latitude/strided_slice/stack:output:0Isequential/dense_features/dropoff_latitude/strided_slice/stack_1:output:0Isequential/dense_features/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
:sequential/dense_features/dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
8sequential/dense_features/dropoff_latitude/Reshape/shapePackAsequential/dense_features/dropoff_latitude/strided_slice:output:0Csequential/dense_features/dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
2sequential/dense_features/dropoff_latitude/ReshapeReshape>sequential/dense_features/dropoff_latitude/ExpandDims:output:0Asequential/dense_features/dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
:sequential/dense_features/dropoff_longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
6sequential/dense_features/dropoff_longitude/ExpandDims
ExpandDimsdropoff_longitudeCsequential/dense_features/dropoff_longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
1sequential/dense_features/dropoff_longitude/ShapeShape?sequential/dense_features/dropoff_longitude/ExpandDims:output:0*
T0*
_output_shapes
:?
?sequential/dense_features/dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Asequential/dense_features/dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Asequential/dense_features/dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9sequential/dense_features/dropoff_longitude/strided_sliceStridedSlice:sequential/dense_features/dropoff_longitude/Shape:output:0Hsequential/dense_features/dropoff_longitude/strided_slice/stack:output:0Jsequential/dense_features/dropoff_longitude/strided_slice/stack_1:output:0Jsequential/dense_features/dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;sequential/dense_features/dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
9sequential/dense_features/dropoff_longitude/Reshape/shapePackBsequential/dense_features/dropoff_longitude/strided_slice:output:0Dsequential/dense_features/dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
3sequential/dense_features/dropoff_longitude/ReshapeReshape?sequential/dense_features/dropoff_longitude/ExpandDims:output:0Bsequential/dense_features/dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
8sequential/dense_features/pickup_latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
4sequential/dense_features/pickup_latitude/ExpandDims
ExpandDimspickup_latitudeAsequential/dense_features/pickup_latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
/sequential/dense_features/pickup_latitude/ShapeShape=sequential/dense_features/pickup_latitude/ExpandDims:output:0*
T0*
_output_shapes
:?
=sequential/dense_features/pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?sequential/dense_features/pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?sequential/dense_features/pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential/dense_features/pickup_latitude/strided_sliceStridedSlice8sequential/dense_features/pickup_latitude/Shape:output:0Fsequential/dense_features/pickup_latitude/strided_slice/stack:output:0Hsequential/dense_features/pickup_latitude/strided_slice/stack_1:output:0Hsequential/dense_features/pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9sequential/dense_features/pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
7sequential/dense_features/pickup_latitude/Reshape/shapePack@sequential/dense_features/pickup_latitude/strided_slice:output:0Bsequential/dense_features/pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
1sequential/dense_features/pickup_latitude/ReshapeReshape=sequential/dense_features/pickup_latitude/ExpandDims:output:0@sequential/dense_features/pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
9sequential/dense_features/pickup_longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
5sequential/dense_features/pickup_longitude/ExpandDims
ExpandDimspickup_longitudeBsequential/dense_features/pickup_longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
0sequential/dense_features/pickup_longitude/ShapeShape>sequential/dense_features/pickup_longitude/ExpandDims:output:0*
T0*
_output_shapes
:?
>sequential/dense_features/pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@sequential/dense_features/pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@sequential/dense_features/pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8sequential/dense_features/pickup_longitude/strided_sliceStridedSlice9sequential/dense_features/pickup_longitude/Shape:output:0Gsequential/dense_features/pickup_longitude/strided_slice/stack:output:0Isequential/dense_features/pickup_longitude/strided_slice/stack_1:output:0Isequential/dense_features/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
:sequential/dense_features/pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
8sequential/dense_features/pickup_longitude/Reshape/shapePackAsequential/dense_features/pickup_longitude/strided_slice:output:0Csequential/dense_features/pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
2sequential/dense_features/pickup_longitude/ReshapeReshape>sequential/dense_features/pickup_longitude/ExpandDims:output:0Asequential/dense_features/pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????p
%sequential/dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
 sequential/dense_features/concatConcatV2;sequential/dense_features/dropoff_latitude/Reshape:output:0<sequential/dense_features/dropoff_longitude/Reshape:output:0:sequential/dense_features/pickup_latitude/Reshape:output:0;sequential/dense_features/pickup_longitude/Reshape:output:0.sequential/dense_features/concat/axis:output:0*
N*
T0*'
_output_shapes
:??????????
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
sequential/dense/MatMulMatMul)sequential/dense_features/concat:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential/dense_2/MatMulMatMul%sequential/dense_1/Relu:activations:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
IdentityIdentity#sequential/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????:?????????:?????????:?????????:?????????: : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp:U Q
#
_output_shapes
:?????????
*
_user_specified_namedropoff_latitude:VR
#
_output_shapes
:?????????
+
_user_specified_namedropoff_longitude:TP
#
_output_shapes
:?????????
)
_user_specified_namepassenger_count:TP
#
_output_shapes
:?????????
)
_user_specified_namepickup_latitude:UQ
#
_output_shapes
:?????????
*
_user_specified_namepickup_longitude
?

?
@__inference_dense_layer_call_and_return_conditional_losses_10514

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?@
?
__inference__traced_save_10667
file_prefix6
2savev2_sequential_dense_kernel_read_readvariableop4
0savev2_sequential_dense_bias_read_readvariableop8
4savev2_sequential_dense_1_kernel_read_readvariableop6
2savev2_sequential_dense_1_bias_read_readvariableop8
4savev2_sequential_dense_2_kernel_read_readvariableop6
2savev2_sequential_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop=
9savev2_adam_sequential_dense_kernel_m_read_readvariableop;
7savev2_adam_sequential_dense_bias_m_read_readvariableop?
;savev2_adam_sequential_dense_1_kernel_m_read_readvariableop=
9savev2_adam_sequential_dense_1_bias_m_read_readvariableop?
;savev2_adam_sequential_dense_2_kernel_m_read_readvariableop=
9savev2_adam_sequential_dense_2_bias_m_read_readvariableop=
9savev2_adam_sequential_dense_kernel_v_read_readvariableop;
7savev2_adam_sequential_dense_bias_v_read_readvariableop?
;savev2_adam_sequential_dense_1_kernel_v_read_readvariableop=
9savev2_adam_sequential_dense_1_bias_v_read_readvariableop?
;savev2_adam_sequential_dense_2_kernel_v_read_readvariableop=
9savev2_adam_sequential_dense_2_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_sequential_dense_kernel_read_readvariableop0savev2_sequential_dense_bias_read_readvariableop4savev2_sequential_dense_1_kernel_read_readvariableop2savev2_sequential_dense_1_bias_read_readvariableop4savev2_sequential_dense_2_kernel_read_readvariableop2savev2_sequential_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop9savev2_adam_sequential_dense_kernel_m_read_readvariableop7savev2_adam_sequential_dense_bias_m_read_readvariableop;savev2_adam_sequential_dense_1_kernel_m_read_readvariableop9savev2_adam_sequential_dense_1_bias_m_read_readvariableop;savev2_adam_sequential_dense_2_kernel_m_read_readvariableop9savev2_adam_sequential_dense_2_bias_m_read_readvariableop9savev2_adam_sequential_dense_kernel_v_read_readvariableop7savev2_adam_sequential_dense_bias_v_read_readvariableop;savev2_adam_sequential_dense_1_kernel_v_read_readvariableop9savev2_adam_sequential_dense_1_bias_v_read_readvariableop;savev2_adam_sequential_dense_2_kernel_v_read_readvariableop9savev2_adam_sequential_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : :::: : : : : : : : : : : : : : :::: : : :::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?
?
'__inference_dense_1_layer_call_fn_10523

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_9893o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
B__inference_dense_2_layer_call_and_return_conditional_losses_10553

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
dropoff_latitude5
"serving_default_dropoff_latitude:0?????????
K
dropoff_longitude6
#serving_default_dropoff_longitude:0?????????
G
passenger_count4
!serving_default_passenger_count:0?????????
G
pickup_latitude4
!serving_default_pickup_latitude:0?????????
I
pickup_longitude5
"serving_default_pickup_longitude:0?????????<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
_build_input_shape
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
___call__
*`&call_and_return_all_conditional_losses
a_default_save_signature"
_tf_keras_sequential
?
_feature_columns

_resources
	variables
trainable_variables
regularization_losses
	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$iter

%beta_1

&beta_2
	'decay
(learning_ratemSmTmUmVmWmXvYvZv[v\v]v^"
	optimizer
 "
trackable_dict_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
	regularization_losses
___call__
a_default_save_signature
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
,
jserving_default"
signature_map
 "
trackable_list_wrapper
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
):' 2sequential/dense/kernel
#:! 2sequential/dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
+:) 2sequential/dense_1/kernel
%:#2sequential/dense_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
+:)2sequential/dense_2/kernel
%:#2sequential/dense_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
 	variables
!trainable_variables
"regularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
5
B0
C1
D2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Etotal
	Fcount
G	variables
H	keras_api"
_tf_keras_metric
^
	Itotal
	Jcount
K
_fn_kwargs
L	variables
M	keras_api"
_tf_keras_metric
^
	Ntotal
	Ocount
P
_fn_kwargs
Q	variables
R	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
E0
F1"
trackable_list_wrapper
-
G	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
I0
J1"
trackable_list_wrapper
-
L	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
N0
O1"
trackable_list_wrapper
-
Q	variables"
_generic_user_object
.:, 2Adam/sequential/dense/kernel/m
(:& 2Adam/sequential/dense/bias/m
0:. 2 Adam/sequential/dense_1/kernel/m
*:(2Adam/sequential/dense_1/bias/m
0:.2 Adam/sequential/dense_2/kernel/m
*:(2Adam/sequential/dense_2/bias/m
.:, 2Adam/sequential/dense/kernel/v
(:& 2Adam/sequential/dense/bias/v
0:. 2 Adam/sequential/dense_1/kernel/v
*:(2Adam/sequential/dense_1/bias/v
0:.2 Adam/sequential/dense_2/kernel/v
*:(2Adam/sequential/dense_2/bias/v
?2?
)__inference_sequential_layer_call_fn_9931
*__inference_sequential_layer_call_fn_10215
*__inference_sequential_layer_call_fn_10236
*__inference_sequential_layer_call_fn_10117?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_10306
E__inference_sequential_layer_call_and_return_conditional_losses_10376
E__inference_sequential_layer_call_and_return_conditional_losses_10141
E__inference_sequential_layer_call_and_return_conditional_losses_10165?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
__inference__wrapped_model_9797dropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitude"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_dense_features_layer_call_fn_10385
.__inference_dense_features_layer_call_fn_10394?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_dense_features_layer_call_and_return_conditional_losses_10444
I__inference_dense_features_layer_call_and_return_conditional_losses_10494?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_10503?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_10514?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_1_layer_call_fn_10523?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_1_layer_call_and_return_conditional_losses_10534?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_2_layer_call_fn_10543?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_2_layer_call_and_return_conditional_losses_10553?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_10194dropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitude"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_9797????
???
???
:
dropoff_latitude&?#
dropoff_latitude?????????
<
dropoff_longitude'?$
dropoff_longitude?????????
8
passenger_count%?"
passenger_count?????????
8
pickup_latitude%?"
pickup_latitude?????????
:
pickup_longitude&?#
pickup_longitude?????????
? "3?0
.
output_1"?
output_1??????????
B__inference_dense_1_layer_call_and_return_conditional_losses_10534\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? z
'__inference_dense_1_layer_call_fn_10523O/?,
%?"
 ?
inputs????????? 
? "???????????
B__inference_dense_2_layer_call_and_return_conditional_losses_10553\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? z
'__inference_dense_2_layer_call_fn_10543O/?,
%?"
 ?
inputs?????????
? "???????????
I__inference_dense_features_layer_call_and_return_conditional_losses_10444????
???
???
C
dropoff_latitude/?,
features/dropoff_latitude?????????
E
dropoff_longitude0?-
features/dropoff_longitude?????????
A
passenger_count.?+
features/passenger_count?????????
A
pickup_latitude.?+
features/pickup_latitude?????????
C
pickup_longitude/?,
features/pickup_longitude?????????

 
p 
? "%?"
?
0?????????
? ?
I__inference_dense_features_layer_call_and_return_conditional_losses_10494????
???
???
C
dropoff_latitude/?,
features/dropoff_latitude?????????
E
dropoff_longitude0?-
features/dropoff_longitude?????????
A
passenger_count.?+
features/passenger_count?????????
A
pickup_latitude.?+
features/pickup_latitude?????????
C
pickup_longitude/?,
features/pickup_longitude?????????

 
p
? "%?"
?
0?????????
? ?
.__inference_dense_features_layer_call_fn_10385????
???
???
C
dropoff_latitude/?,
features/dropoff_latitude?????????
E
dropoff_longitude0?-
features/dropoff_longitude?????????
A
passenger_count.?+
features/passenger_count?????????
A
pickup_latitude.?+
features/pickup_latitude?????????
C
pickup_longitude/?,
features/pickup_longitude?????????

 
p 
? "???????????
.__inference_dense_features_layer_call_fn_10394????
???
???
C
dropoff_latitude/?,
features/dropoff_latitude?????????
E
dropoff_longitude0?-
features/dropoff_longitude?????????
A
passenger_count.?+
features/passenger_count?????????
A
pickup_latitude.?+
features/pickup_latitude?????????
C
pickup_longitude/?,
features/pickup_longitude?????????

 
p
? "???????????
@__inference_dense_layer_call_and_return_conditional_losses_10514\/?,
%?"
 ?
inputs?????????
? "%?"
?
0????????? 
? x
%__inference_dense_layer_call_fn_10503O/?,
%?"
 ?
inputs?????????
? "?????????? ?
E__inference_sequential_layer_call_and_return_conditional_losses_10141????
???
???
:
dropoff_latitude&?#
dropoff_latitude?????????
<
dropoff_longitude'?$
dropoff_longitude?????????
8
passenger_count%?"
passenger_count?????????
8
pickup_latitude%?"
pickup_latitude?????????
:
pickup_longitude&?#
pickup_longitude?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_10165????
???
???
:
dropoff_latitude&?#
dropoff_latitude?????????
<
dropoff_longitude'?$
dropoff_longitude?????????
8
passenger_count%?"
passenger_count?????????
8
pickup_latitude%?"
pickup_latitude?????????
:
pickup_longitude&?#
pickup_longitude?????????
p

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_10306????
???
???
A
dropoff_latitude-?*
inputs/dropoff_latitude?????????
C
dropoff_longitude.?+
inputs/dropoff_longitude?????????
?
passenger_count,?)
inputs/passenger_count?????????
?
pickup_latitude,?)
inputs/pickup_latitude?????????
A
pickup_longitude-?*
inputs/pickup_longitude?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_10376????
???
???
A
dropoff_latitude-?*
inputs/dropoff_latitude?????????
C
dropoff_longitude.?+
inputs/dropoff_longitude?????????
?
passenger_count,?)
inputs/passenger_count?????????
?
pickup_latitude,?)
inputs/pickup_latitude?????????
A
pickup_longitude-?*
inputs/pickup_longitude?????????
p

 
? "%?"
?
0?????????
? ?
*__inference_sequential_layer_call_fn_10117????
???
???
:
dropoff_latitude&?#
dropoff_latitude?????????
<
dropoff_longitude'?$
dropoff_longitude?????????
8
passenger_count%?"
passenger_count?????????
8
pickup_latitude%?"
pickup_latitude?????????
:
pickup_longitude&?#
pickup_longitude?????????
p

 
? "???????????
*__inference_sequential_layer_call_fn_10215????
???
???
A
dropoff_latitude-?*
inputs/dropoff_latitude?????????
C
dropoff_longitude.?+
inputs/dropoff_longitude?????????
?
passenger_count,?)
inputs/passenger_count?????????
?
pickup_latitude,?)
inputs/pickup_latitude?????????
A
pickup_longitude-?*
inputs/pickup_longitude?????????
p 

 
? "???????????
*__inference_sequential_layer_call_fn_10236????
???
???
A
dropoff_latitude-?*
inputs/dropoff_latitude?????????
C
dropoff_longitude.?+
inputs/dropoff_longitude?????????
?
passenger_count,?)
inputs/passenger_count?????????
?
pickup_latitude,?)
inputs/pickup_latitude?????????
A
pickup_longitude-?*
inputs/pickup_longitude?????????
p

 
? "???????????
)__inference_sequential_layer_call_fn_9931????
???
???
:
dropoff_latitude&?#
dropoff_latitude?????????
<
dropoff_longitude'?$
dropoff_longitude?????????
8
passenger_count%?"
passenger_count?????????
8
pickup_latitude%?"
pickup_latitude?????????
:
pickup_longitude&?#
pickup_longitude?????????
p 

 
? "???????????
#__inference_signature_wrapper_10194????
? 
???
:
dropoff_latitude&?#
dropoff_latitude?????????
<
dropoff_longitude'?$
dropoff_longitude?????????
8
passenger_count%?"
passenger_count?????????
8
pickup_latitude%?"
pickup_latitude?????????
:
pickup_longitude&?#
pickup_longitude?????????"3?0
.
output_1"?
output_1?????????