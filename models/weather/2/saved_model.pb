№ы
є6Э6
,
Abs
x"T
y"T"
Ttype:

2	
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype

ControlTrigger
=
DiagPart

input"T
diagonal"T"
Ttype:
	2	
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
8
FloorMod
x"T
y"T
z"T"
Ttype:	
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
P
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:
2

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
/
Sign
x"T
y"T"
Ttype:

2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
A

StackPopV2

handle
elem"	elem_type"
	elem_typetype
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( 
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring 
і
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

StridedSliceGrad
shape"Index
begin"Index
end"Index
strides"Index
dy"T
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestring
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
о
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.7.12v1.7.1-0-gc8137f3a8eљ

gru_1_inputPlaceholder*
dtype0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*)
shape :џџџџџџџџџџџџџџџџџџ
Б
6gru_1/gru_cell/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*(
_class
loc:@gru_1/gru_cell/kernel*
valueB"   0   
Ѓ
4gru_1/gru_cell/kernel/Initializer/random_uniform/minConst*(
_class
loc:@gru_1/gru_cell/kernel*
valueB
 *FО*
dtype0*
_output_shapes
: 
Ѓ
4gru_1/gru_cell/kernel/Initializer/random_uniform/maxConst*(
_class
loc:@gru_1/gru_cell/kernel*
valueB
 *F>*
dtype0*
_output_shapes
: 

>gru_1/gru_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniform6gru_1/gru_cell/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:0*

seed *
T0*(
_class
loc:@gru_1/gru_cell/kernel*
seed2 
ђ
4gru_1/gru_cell/kernel/Initializer/random_uniform/subSub4gru_1/gru_cell/kernel/Initializer/random_uniform/max4gru_1/gru_cell/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@gru_1/gru_cell/kernel*
_output_shapes
: 

4gru_1/gru_cell/kernel/Initializer/random_uniform/mulMul>gru_1/gru_cell/kernel/Initializer/random_uniform/RandomUniform4gru_1/gru_cell/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@gru_1/gru_cell/kernel*
_output_shapes

:0
і
0gru_1/gru_cell/kernel/Initializer/random_uniformAdd4gru_1/gru_cell/kernel/Initializer/random_uniform/mul4gru_1/gru_cell/kernel/Initializer/random_uniform/min*
_output_shapes

:0*
T0*(
_class
loc:@gru_1/gru_cell/kernel
Г
gru_1/gru_cell/kernel
VariableV2*
shared_name *(
_class
loc:@gru_1/gru_cell/kernel*
	container *
shape
:0*
dtype0*
_output_shapes

:0
ы
gru_1/gru_cell/kernel/AssignAssigngru_1/gru_cell/kernel0gru_1/gru_cell/kernel/Initializer/random_uniform*
T0*(
_class
loc:@gru_1/gru_cell/kernel*
validate_shape(*
_output_shapes

:0*
use_locking(

gru_1/gru_cell/kernel/readIdentitygru_1/gru_cell/kernel*
_output_shapes

:0*
T0*(
_class
loc:@gru_1/gru_cell/kernel
Ф
?gru_1/gru_cell/recurrent_kernel/Initializer/random_normal/shapeConst*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
valueB"0      *
dtype0*
_output_shapes
:
З
>gru_1/gru_cell/recurrent_kernel/Initializer/random_normal/meanConst*
_output_shapes
: *2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
valueB
 *    *
dtype0
Й
@gru_1/gru_cell/recurrent_kernel/Initializer/random_normal/stddevConst*
_output_shapes
: *2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
valueB
 *  ?*
dtype0
Њ
Ngru_1/gru_cell/recurrent_kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal?gru_1/gru_cell/recurrent_kernel/Initializer/random_normal/shape*
T0*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
seed2 *
dtype0*
_output_shapes

:0*

seed 
Г
=gru_1/gru_cell/recurrent_kernel/Initializer/random_normal/mulMulNgru_1/gru_cell/recurrent_kernel/Initializer/random_normal/RandomStandardNormal@gru_1/gru_cell/recurrent_kernel/Initializer/random_normal/stddev*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
_output_shapes

:0*
T0

9gru_1/gru_cell/recurrent_kernel/Initializer/random_normalAdd=gru_1/gru_cell/recurrent_kernel/Initializer/random_normal/mul>gru_1/gru_cell/recurrent_kernel/Initializer/random_normal/mean*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
_output_shapes

:0*
T0
ы
.gru_1/gru_cell/recurrent_kernel/Initializer/QrQr9gru_1/gru_cell/recurrent_kernel/Initializer/random_normal*
full_matrices( *
T0*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*(
_output_shapes
:0:
Ы
4gru_1/gru_cell/recurrent_kernel/Initializer/DiagPartDiagPart0gru_1/gru_cell/recurrent_kernel/Initializer/Qr:1*
T0*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
_output_shapes
:
Х
/gru_1/gru_cell/recurrent_kernel/Initializer/AbsAbs4gru_1/gru_cell/recurrent_kernel/Initializer/DiagPart*
T0*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
_output_shapes
:
ў
3gru_1/gru_cell/recurrent_kernel/Initializer/truedivRealDiv4gru_1/gru_cell/recurrent_kernel/Initializer/DiagPart/gru_1/gru_cell/recurrent_kernel/Initializer/Abs*
T0*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
_output_shapes
:
ј
/gru_1/gru_cell/recurrent_kernel/Initializer/mulMul.gru_1/gru_cell/recurrent_kernel/Initializer/Qr3gru_1/gru_cell/recurrent_kernel/Initializer/truediv*
T0*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
_output_shapes

:0
а
Kgru_1/gru_cell/recurrent_kernel/Initializer/matrix_transpose/transpose/permConst*
_output_shapes
:*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
valueB"       *
dtype0
Л
Fgru_1/gru_cell/recurrent_kernel/Initializer/matrix_transpose/transpose	Transpose/gru_1/gru_cell/recurrent_kernel/Initializer/mulKgru_1/gru_cell/recurrent_kernel/Initializer/matrix_transpose/transpose/perm*
T0*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
_output_shapes

:0*
Tperm0
О
9gru_1/gru_cell/recurrent_kernel/Initializer/Reshape/shapeConst*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
valueB"   0   *
dtype0*
_output_shapes
:
Ќ
3gru_1/gru_cell/recurrent_kernel/Initializer/ReshapeReshapeFgru_1/gru_cell/recurrent_kernel/Initializer/matrix_transpose/transpose9gru_1/gru_cell/recurrent_kernel/Initializer/Reshape/shape*
T0*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
Tshape0*
_output_shapes

:0
Ќ
3gru_1/gru_cell/recurrent_kernel/Initializer/mul_1/xConst*
dtype0*
_output_shapes
: *2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
valueB
 *  ?
џ
1gru_1/gru_cell/recurrent_kernel/Initializer/mul_1Mul3gru_1/gru_cell/recurrent_kernel/Initializer/mul_1/x3gru_1/gru_cell/recurrent_kernel/Initializer/Reshape*
T0*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
_output_shapes

:0
Ч
gru_1/gru_cell/recurrent_kernel
VariableV2*
	container *
shape
:0*
dtype0*
_output_shapes

:0*
shared_name *2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel

&gru_1/gru_cell/recurrent_kernel/AssignAssigngru_1/gru_cell/recurrent_kernel1gru_1/gru_cell/recurrent_kernel/Initializer/mul_1*
_output_shapes

:0*
use_locking(*
T0*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
validate_shape(
Ў
$gru_1/gru_cell/recurrent_kernel/readIdentitygru_1/gru_cell/recurrent_kernel*
_output_shapes

:0*
T0*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel
Ї
5gru_1/gru_cell/bias/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@gru_1/gru_cell/bias*
valueB:0*
dtype0*
_output_shapes
:

+gru_1/gru_cell/bias/Initializer/zeros/ConstConst*&
_class
loc:@gru_1/gru_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
№
%gru_1/gru_cell/bias/Initializer/zerosFill5gru_1/gru_cell/bias/Initializer/zeros/shape_as_tensor+gru_1/gru_cell/bias/Initializer/zeros/Const*&
_class
loc:@gru_1/gru_cell/bias*

index_type0*
_output_shapes
:0*
T0
Ї
gru_1/gru_cell/bias
VariableV2*
dtype0*
_output_shapes
:0*
shared_name *&
_class
loc:@gru_1/gru_cell/bias*
	container *
shape:0
ж
gru_1/gru_cell/bias/AssignAssigngru_1/gru_cell/bias%gru_1/gru_cell/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@gru_1/gru_cell/bias*
validate_shape(*
_output_shapes
:0

gru_1/gru_cell/bias/readIdentitygru_1/gru_cell/bias*
T0*&
_class
loc:@gru_1/gru_cell/bias*
_output_shapes
:0
i
gru_1/zeros_like	ZerosLikegru_1_input*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
l
gru_1/Sum/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:

	gru_1/SumSumgru_1/zeros_likegru_1/Sum/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0
_
gru_1/ExpandDims/dimConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
}
gru_1/ExpandDims
ExpandDims	gru_1/Sumgru_1/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
e
gru_1/Tile/multiplesConst*
_output_shapes
:*
valueB"      *
dtype0
~

gru_1/TileTilegru_1/ExpandDimsgru_1/Tile/multiples*

Tmultiples0*
T0*'
_output_shapes
:џџџџџџџџџ
i
gru_1/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:

gru_1/transpose	Transposegru_1_inputgru_1/transpose/perm*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
Tperm0
Z
gru_1/ShapeShapegru_1/transpose*
T0*
out_type0*
_output_shapes
:
c
gru_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
e
gru_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
e
gru_1/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

gru_1/strided_sliceStridedSlicegru_1/Shapegru_1/strided_slice/stackgru_1/strided_slice/stack_1gru_1/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
e
gru_1/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
g
gru_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
gru_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Д
gru_1/strided_slice_1StridedSlicegru_1/transposegru_1/strided_slice_1/stackgru_1/strided_slice_1/stack_1gru_1/strided_slice_1/stack_2*
end_mask *'
_output_shapes
:џџџџџџџџџ*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
b
gru_1/Shape_1Shapegru_1/strided_slice_1*
out_type0*
_output_shapes
:*
T0
n
gru_1/strided_slice_2/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
g
gru_1/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
g
gru_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ё
gru_1/strided_slice_2StridedSlicegru_1/Shape_1gru_1/strided_slice_2/stackgru_1/strided_slice_2/stack_1gru_1/strided_slice_2/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
b
gru_1/Shape_2Shapegru_1/strided_slice_1*
T0*
out_type0*
_output_shapes
:
e
gru_1/strided_slice_3/stackConst*
_output_shapes
:*
valueB: *
dtype0
g
gru_1/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
gru_1/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ё
gru_1/strided_slice_3StridedSlicegru_1/Shape_2gru_1/strided_slice_3/stackgru_1/strided_slice_3/stack_1gru_1/strided_slice_3/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

gru_1/ones/packedPackgru_1/strided_slice_3gru_1/strided_slice_2*
T0*

axis *
N*
_output_shapes
:
U
gru_1/ones/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 


gru_1/onesFillgru_1/ones/packedgru_1/ones/Const*

index_type0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
b
 gru_1/keras_learning_phase/inputConst*
_output_shapes
: *
value	B
 Z *
dtype0


gru_1/keras_learning_phasePlaceholderWithDefault gru_1/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
v
gru_1/cond/SwitchSwitchgru_1/keras_learning_phasegru_1/keras_learning_phase*
T0
*
_output_shapes
: : 
U
gru_1/cond/switch_tIdentitygru_1/cond/Switch:1*
T0
*
_output_shapes
: 
S
gru_1/cond/switch_fIdentitygru_1/cond/Switch*
T0
*
_output_shapes
: 
[
gru_1/cond/pred_idIdentitygru_1/keras_learning_phase*
_output_shapes
: *
T0

k
gru_1/cond/mul/yConst^gru_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
gru_1/cond/mulMulgru_1/cond/mul/Switch:1gru_1/cond/mul/y*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
Е
gru_1/cond/mul/SwitchSwitch
gru_1/onesgru_1/cond/pred_id*L
_output_shapes:
8:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџџџџџџџџџџ*
T0*
_class
loc:@gru_1/ones
w
gru_1/cond/dropout/keep_probConst^gru_1/cond/switch_t*
valueB
 *fff?*
dtype0*
_output_shapes
: 
f
gru_1/cond/dropout/ShapeShapegru_1/cond/mul*
T0*
out_type0*
_output_shapes
:

%gru_1/cond/dropout/random_uniform/minConst^gru_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

%gru_1/cond/dropout/random_uniform/maxConst^gru_1/cond/switch_t*
_output_shapes
: *
valueB
 *  ?*
dtype0
С
/gru_1/cond/dropout/random_uniform/RandomUniformRandomUniformgru_1/cond/dropout/Shape*
T0*
dtype0*
seed2Ї*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
seedБџх)

%gru_1/cond/dropout/random_uniform/subSub%gru_1/cond/dropout/random_uniform/max%gru_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
П
%gru_1/cond/dropout/random_uniform/mulMul/gru_1/cond/dropout/random_uniform/RandomUniform%gru_1/cond/dropout/random_uniform/sub*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Б
!gru_1/cond/dropout/random_uniformAdd%gru_1/cond/dropout/random_uniform/mul%gru_1/cond/dropout/random_uniform/min*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

gru_1/cond/dropout/addAddgru_1/cond/dropout/keep_prob!gru_1/cond/dropout/random_uniform*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
t
gru_1/cond/dropout/FloorFloorgru_1/cond/dropout/add*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

gru_1/cond/dropout/divRealDivgru_1/cond/mulgru_1/cond/dropout/keep_prob*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

gru_1/cond/dropout/mulMulgru_1/cond/dropout/divgru_1/cond/dropout/Floor*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
Г
gru_1/cond/Switch_1Switch
gru_1/onesgru_1/cond/pred_id*
T0*
_class
loc:@gru_1/ones*L
_output_shapes:
8:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџџџџџџџџџџ

gru_1/cond/MergeMergegru_1/cond/Switch_1gru_1/cond/dropout/mul*
T0*
N*2
_output_shapes 
:џџџџџџџџџџџџџџџџџџ: 
x
gru_1/cond_1/SwitchSwitchgru_1/keras_learning_phasegru_1/keras_learning_phase*
T0
*
_output_shapes
: : 
Y
gru_1/cond_1/switch_tIdentitygru_1/cond_1/Switch:1*
T0
*
_output_shapes
: 
W
gru_1/cond_1/switch_fIdentitygru_1/cond_1/Switch*
_output_shapes
: *
T0

]
gru_1/cond_1/pred_idIdentitygru_1/keras_learning_phase*
T0
*
_output_shapes
: 
o
gru_1/cond_1/mul/yConst^gru_1/cond_1/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 

gru_1/cond_1/mulMulgru_1/cond_1/mul/Switch:1gru_1/cond_1/mul/y*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
Й
gru_1/cond_1/mul/SwitchSwitch
gru_1/onesgru_1/cond_1/pred_id*
T0*
_class
loc:@gru_1/ones*L
_output_shapes:
8:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџџџџџџџџџџ
{
gru_1/cond_1/dropout/keep_probConst^gru_1/cond_1/switch_t*
dtype0*
_output_shapes
: *
valueB
 *fff?
j
gru_1/cond_1/dropout/ShapeShapegru_1/cond_1/mul*
T0*
out_type0*
_output_shapes
:

'gru_1/cond_1/dropout/random_uniform/minConst^gru_1/cond_1/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0

'gru_1/cond_1/dropout/random_uniform/maxConst^gru_1/cond_1/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Х
1gru_1/cond_1/dropout/random_uniform/RandomUniformRandomUniformgru_1/cond_1/dropout/Shape*
T0*
dtype0*
seed2ђ*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
seedБџх)
Ё
'gru_1/cond_1/dropout/random_uniform/subSub'gru_1/cond_1/dropout/random_uniform/max'gru_1/cond_1/dropout/random_uniform/min*
T0*
_output_shapes
: 
Х
'gru_1/cond_1/dropout/random_uniform/mulMul1gru_1/cond_1/dropout/random_uniform/RandomUniform'gru_1/cond_1/dropout/random_uniform/sub*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
З
#gru_1/cond_1/dropout/random_uniformAdd'gru_1/cond_1/dropout/random_uniform/mul'gru_1/cond_1/dropout/random_uniform/min*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

gru_1/cond_1/dropout/addAddgru_1/cond_1/dropout/keep_prob#gru_1/cond_1/dropout/random_uniform*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
x
gru_1/cond_1/dropout/FloorFloorgru_1/cond_1/dropout/add*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

gru_1/cond_1/dropout/divRealDivgru_1/cond_1/mulgru_1/cond_1/dropout/keep_prob*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

gru_1/cond_1/dropout/mulMulgru_1/cond_1/dropout/divgru_1/cond_1/dropout/Floor*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
З
gru_1/cond_1/Switch_1Switch
gru_1/onesgru_1/cond_1/pred_id*
_class
loc:@gru_1/ones*L
_output_shapes:
8:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџџџџџџџџџџ*
T0

gru_1/cond_1/MergeMergegru_1/cond_1/Switch_1gru_1/cond_1/dropout/mul*
T0*
N*2
_output_shapes 
:џџџџџџџџџџџџџџџџџџ: 
x
gru_1/cond_2/SwitchSwitchgru_1/keras_learning_phasegru_1/keras_learning_phase*
_output_shapes
: : *
T0

Y
gru_1/cond_2/switch_tIdentitygru_1/cond_2/Switch:1*
T0
*
_output_shapes
: 
W
gru_1/cond_2/switch_fIdentitygru_1/cond_2/Switch*
T0
*
_output_shapes
: 
]
gru_1/cond_2/pred_idIdentitygru_1/keras_learning_phase*
T0
*
_output_shapes
: 
o
gru_1/cond_2/mul/yConst^gru_1/cond_2/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 

gru_1/cond_2/mulMulgru_1/cond_2/mul/Switch:1gru_1/cond_2/mul/y*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Й
gru_1/cond_2/mul/SwitchSwitch
gru_1/onesgru_1/cond_2/pred_id*
T0*
_class
loc:@gru_1/ones*L
_output_shapes:
8:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџџџџџџџџџџ
{
gru_1/cond_2/dropout/keep_probConst^gru_1/cond_2/switch_t*
valueB
 *fff?*
dtype0*
_output_shapes
: 
j
gru_1/cond_2/dropout/ShapeShapegru_1/cond_2/mul*
T0*
out_type0*
_output_shapes
:

'gru_1/cond_2/dropout/random_uniform/minConst^gru_1/cond_2/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

'gru_1/cond_2/dropout/random_uniform/maxConst^gru_1/cond_2/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Х
1gru_1/cond_2/dropout/random_uniform/RandomUniformRandomUniformgru_1/cond_2/dropout/Shape*
seedБџх)*
T0*
dtype0*
seed2љС*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Ё
'gru_1/cond_2/dropout/random_uniform/subSub'gru_1/cond_2/dropout/random_uniform/max'gru_1/cond_2/dropout/random_uniform/min*
_output_shapes
: *
T0
Х
'gru_1/cond_2/dropout/random_uniform/mulMul1gru_1/cond_2/dropout/random_uniform/RandomUniform'gru_1/cond_2/dropout/random_uniform/sub*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
З
#gru_1/cond_2/dropout/random_uniformAdd'gru_1/cond_2/dropout/random_uniform/mul'gru_1/cond_2/dropout/random_uniform/min*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

gru_1/cond_2/dropout/addAddgru_1/cond_2/dropout/keep_prob#gru_1/cond_2/dropout/random_uniform*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
x
gru_1/cond_2/dropout/FloorFloorgru_1/cond_2/dropout/add*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

gru_1/cond_2/dropout/divRealDivgru_1/cond_2/mulgru_1/cond_2/dropout/keep_prob*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

gru_1/cond_2/dropout/mulMulgru_1/cond_2/dropout/divgru_1/cond_2/dropout/Floor*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
З
gru_1/cond_2/Switch_1Switch
gru_1/onesgru_1/cond_2/pred_id*L
_output_shapes:
8:џџџџџџџџџџџџџџџџџџ:џџџџџџџџџџџџџџџџџџ*
T0*
_class
loc:@gru_1/ones

gru_1/cond_2/MergeMergegru_1/cond_2/Switch_1gru_1/cond_2/dropout/mul*
T0*
N*2
_output_shapes 
:џџџџџџџџџџџџџџџџџџ: 
b
gru_1/Shape_3Shapegru_1/strided_slice_1*
_output_shapes
:*
T0*
out_type0
e
gru_1/strided_slice_4/stackConst*
valueB: *
dtype0*
_output_shapes
:
g
gru_1/strided_slice_4/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
gru_1/strided_slice_4/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ё
gru_1/strided_slice_4StridedSlicegru_1/Shape_3gru_1/strided_slice_4/stackgru_1/strided_slice_4/stack_1gru_1/strided_slice_4/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
W
gru_1/ones_1/packed/1Const*
value	B :*
dtype0*
_output_shapes
: 

gru_1/ones_1/packedPackgru_1/strided_slice_4gru_1/ones_1/packed/1*
_output_shapes
:*
T0*

axis *
N
W
gru_1/ones_1/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

gru_1/ones_1Fillgru_1/ones_1/packedgru_1/ones_1/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ
x
gru_1/cond_3/SwitchSwitchgru_1/keras_learning_phasegru_1/keras_learning_phase*
_output_shapes
: : *
T0

Y
gru_1/cond_3/switch_tIdentitygru_1/cond_3/Switch:1*
T0
*
_output_shapes
: 
W
gru_1/cond_3/switch_fIdentitygru_1/cond_3/Switch*
T0
*
_output_shapes
: 
]
gru_1/cond_3/pred_idIdentitygru_1/keras_learning_phase*
T0
*
_output_shapes
: 
o
gru_1/cond_3/mul/yConst^gru_1/cond_3/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
x
gru_1/cond_3/mulMulgru_1/cond_3/mul/Switch:1gru_1/cond_3/mul/y*
T0*'
_output_shapes
:џџџџџџџџџ
Ћ
gru_1/cond_3/mul/SwitchSwitchgru_1/ones_1gru_1/cond_3/pred_id*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*
T0*
_class
loc:@gru_1/ones_1
{
gru_1/cond_3/dropout/keep_probConst^gru_1/cond_3/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
j
gru_1/cond_3/dropout/ShapeShapegru_1/cond_3/mul*
T0*
out_type0*
_output_shapes
:

'gru_1/cond_3/dropout/random_uniform/minConst^gru_1/cond_3/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

'gru_1/cond_3/dropout/random_uniform/maxConst^gru_1/cond_3/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
М
1gru_1/cond_3/dropout/random_uniform/RandomUniformRandomUniformgru_1/cond_3/dropout/Shape*
T0*
dtype0*
seed2Нѕє*'
_output_shapes
:џџџџџџџџџ*
seedБџх)
Ё
'gru_1/cond_3/dropout/random_uniform/subSub'gru_1/cond_3/dropout/random_uniform/max'gru_1/cond_3/dropout/random_uniform/min*
_output_shapes
: *
T0
М
'gru_1/cond_3/dropout/random_uniform/mulMul1gru_1/cond_3/dropout/random_uniform/RandomUniform'gru_1/cond_3/dropout/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџ
Ў
#gru_1/cond_3/dropout/random_uniformAdd'gru_1/cond_3/dropout/random_uniform/mul'gru_1/cond_3/dropout/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ

gru_1/cond_3/dropout/addAddgru_1/cond_3/dropout/keep_prob#gru_1/cond_3/dropout/random_uniform*'
_output_shapes
:џџџџџџџџџ*
T0
o
gru_1/cond_3/dropout/FloorFloorgru_1/cond_3/dropout/add*
T0*'
_output_shapes
:џџџџџџџџџ

gru_1/cond_3/dropout/divRealDivgru_1/cond_3/mulgru_1/cond_3/dropout/keep_prob*
T0*'
_output_shapes
:џџџџџџџџџ

gru_1/cond_3/dropout/mulMulgru_1/cond_3/dropout/divgru_1/cond_3/dropout/Floor*
T0*'
_output_shapes
:џџџџџџџџџ
Љ
gru_1/cond_3/Switch_1Switchgru_1/ones_1gru_1/cond_3/pred_id*
T0*
_class
loc:@gru_1/ones_1*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ

gru_1/cond_3/MergeMergegru_1/cond_3/Switch_1gru_1/cond_3/dropout/mul*
T0*
N*)
_output_shapes
:џџџџџџџџџ: 
x
gru_1/cond_4/SwitchSwitchgru_1/keras_learning_phasegru_1/keras_learning_phase*
T0
*
_output_shapes
: : 
Y
gru_1/cond_4/switch_tIdentitygru_1/cond_4/Switch:1*
T0
*
_output_shapes
: 
W
gru_1/cond_4/switch_fIdentitygru_1/cond_4/Switch*
_output_shapes
: *
T0

]
gru_1/cond_4/pred_idIdentitygru_1/keras_learning_phase*
_output_shapes
: *
T0

o
gru_1/cond_4/mul/yConst^gru_1/cond_4/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
x
gru_1/cond_4/mulMulgru_1/cond_4/mul/Switch:1gru_1/cond_4/mul/y*'
_output_shapes
:џџџџџџџџџ*
T0
Ћ
gru_1/cond_4/mul/SwitchSwitchgru_1/ones_1gru_1/cond_4/pred_id*
T0*
_class
loc:@gru_1/ones_1*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
{
gru_1/cond_4/dropout/keep_probConst^gru_1/cond_4/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
j
gru_1/cond_4/dropout/ShapeShapegru_1/cond_4/mul*
_output_shapes
:*
T0*
out_type0

'gru_1/cond_4/dropout/random_uniform/minConst^gru_1/cond_4/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

'gru_1/cond_4/dropout/random_uniform/maxConst^gru_1/cond_4/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
М
1gru_1/cond_4/dropout/random_uniform/RandomUniformRandomUniformgru_1/cond_4/dropout/Shape*
seed2СљЃ*'
_output_shapes
:џџџџџџџџџ*
seedБџх)*
T0*
dtype0
Ё
'gru_1/cond_4/dropout/random_uniform/subSub'gru_1/cond_4/dropout/random_uniform/max'gru_1/cond_4/dropout/random_uniform/min*
_output_shapes
: *
T0
М
'gru_1/cond_4/dropout/random_uniform/mulMul1gru_1/cond_4/dropout/random_uniform/RandomUniform'gru_1/cond_4/dropout/random_uniform/sub*'
_output_shapes
:џџџџџџџџџ*
T0
Ў
#gru_1/cond_4/dropout/random_uniformAdd'gru_1/cond_4/dropout/random_uniform/mul'gru_1/cond_4/dropout/random_uniform/min*'
_output_shapes
:џџџџџџџџџ*
T0

gru_1/cond_4/dropout/addAddgru_1/cond_4/dropout/keep_prob#gru_1/cond_4/dropout/random_uniform*'
_output_shapes
:џџџџџџџџџ*
T0
o
gru_1/cond_4/dropout/FloorFloorgru_1/cond_4/dropout/add*
T0*'
_output_shapes
:џџџџџџџџџ

gru_1/cond_4/dropout/divRealDivgru_1/cond_4/mulgru_1/cond_4/dropout/keep_prob*'
_output_shapes
:џџџџџџџџџ*
T0

gru_1/cond_4/dropout/mulMulgru_1/cond_4/dropout/divgru_1/cond_4/dropout/Floor*
T0*'
_output_shapes
:џџџџџџџџџ
Љ
gru_1/cond_4/Switch_1Switchgru_1/ones_1gru_1/cond_4/pred_id*
T0*
_class
loc:@gru_1/ones_1*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ

gru_1/cond_4/MergeMergegru_1/cond_4/Switch_1gru_1/cond_4/dropout/mul*
T0*
N*)
_output_shapes
:џџџџџџџџџ: 
x
gru_1/cond_5/SwitchSwitchgru_1/keras_learning_phasegru_1/keras_learning_phase*
T0
*
_output_shapes
: : 
Y
gru_1/cond_5/switch_tIdentitygru_1/cond_5/Switch:1*
T0
*
_output_shapes
: 
W
gru_1/cond_5/switch_fIdentitygru_1/cond_5/Switch*
T0
*
_output_shapes
: 
]
gru_1/cond_5/pred_idIdentitygru_1/keras_learning_phase*
_output_shapes
: *
T0

o
gru_1/cond_5/mul/yConst^gru_1/cond_5/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
x
gru_1/cond_5/mulMulgru_1/cond_5/mul/Switch:1gru_1/cond_5/mul/y*
T0*'
_output_shapes
:џџџџџџџџџ
Ћ
gru_1/cond_5/mul/SwitchSwitchgru_1/ones_1gru_1/cond_5/pred_id*
T0*
_class
loc:@gru_1/ones_1*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
{
gru_1/cond_5/dropout/keep_probConst^gru_1/cond_5/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
j
gru_1/cond_5/dropout/ShapeShapegru_1/cond_5/mul*
_output_shapes
:*
T0*
out_type0

'gru_1/cond_5/dropout/random_uniform/minConst^gru_1/cond_5/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

'gru_1/cond_5/dropout/random_uniform/maxConst^gru_1/cond_5/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
М
1gru_1/cond_5/dropout/random_uniform/RandomUniformRandomUniformgru_1/cond_5/dropout/Shape*
dtype0*
seed2М­ѓ*'
_output_shapes
:џџџџџџџџџ*
seedБџх)*
T0
Ё
'gru_1/cond_5/dropout/random_uniform/subSub'gru_1/cond_5/dropout/random_uniform/max'gru_1/cond_5/dropout/random_uniform/min*
T0*
_output_shapes
: 
М
'gru_1/cond_5/dropout/random_uniform/mulMul1gru_1/cond_5/dropout/random_uniform/RandomUniform'gru_1/cond_5/dropout/random_uniform/sub*'
_output_shapes
:џџџџџџџџџ*
T0
Ў
#gru_1/cond_5/dropout/random_uniformAdd'gru_1/cond_5/dropout/random_uniform/mul'gru_1/cond_5/dropout/random_uniform/min*'
_output_shapes
:џџџџџџџџџ*
T0

gru_1/cond_5/dropout/addAddgru_1/cond_5/dropout/keep_prob#gru_1/cond_5/dropout/random_uniform*
T0*'
_output_shapes
:џџџџџџџџџ
o
gru_1/cond_5/dropout/FloorFloorgru_1/cond_5/dropout/add*
T0*'
_output_shapes
:џџџџџџџџџ

gru_1/cond_5/dropout/divRealDivgru_1/cond_5/mulgru_1/cond_5/dropout/keep_prob*
T0*'
_output_shapes
:џџџџџџџџџ

gru_1/cond_5/dropout/mulMulgru_1/cond_5/dropout/divgru_1/cond_5/dropout/Floor*
T0*'
_output_shapes
:џџџџџџџџџ
Љ
gru_1/cond_5/Switch_1Switchgru_1/ones_1gru_1/cond_5/pred_id*
T0*
_class
loc:@gru_1/ones_1*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ

gru_1/cond_5/MergeMergegru_1/cond_5/Switch_1gru_1/cond_5/dropout/mul*
T0*
N*)
_output_shapes
:џџџџџџџџџ: 
k
	gru_1/mulMulgru_1/strided_slice_1gru_1/cond/Merge*
T0*'
_output_shapes
:џџџџџџџџџ
o
gru_1/mul_1Mulgru_1/strided_slice_1gru_1/cond_1/Merge*
T0*'
_output_shapes
:џџџџџџџџџ
o
gru_1/mul_2Mulgru_1/strided_slice_1gru_1/cond_2/Merge*
T0*'
_output_shapes
:џџџџџџџџџ
l
gru_1/strided_slice_5/stackConst*
_output_shapes
:*
valueB"        *
dtype0
n
gru_1/strided_slice_5/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
n
gru_1/strided_slice_5/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ж
gru_1/strided_slice_5StridedSlicegru_1/gru_cell/kernel/readgru_1/strided_slice_5/stackgru_1/strided_slice_5/stack_1gru_1/strided_slice_5/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
_output_shapes

:

gru_1/MatMulMatMul	gru_1/mulgru_1/strided_slice_5*
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( 
l
gru_1/strided_slice_6/stackConst*
valueB"       *
dtype0*
_output_shapes
:
n
gru_1/strided_slice_6/stack_1Const*
dtype0*
_output_shapes
:*
valueB"        
n
gru_1/strided_slice_6/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ж
gru_1/strided_slice_6StridedSlicegru_1/gru_cell/kernel/readgru_1/strided_slice_6/stackgru_1/strided_slice_6/stack_1gru_1/strided_slice_6/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:

gru_1/MatMul_1MatMulgru_1/mul_1gru_1/strided_slice_6*
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( 
l
gru_1/strided_slice_7/stackConst*
valueB"        *
dtype0*
_output_shapes
:
n
gru_1/strided_slice_7/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
n
gru_1/strided_slice_7/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ж
gru_1/strided_slice_7StridedSlicegru_1/gru_cell/kernel/readgru_1/strided_slice_7/stackgru_1/strided_slice_7/stack_1gru_1/strided_slice_7/stack_2*
new_axis_mask *
end_mask*
_output_shapes

:*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask

gru_1/MatMul_2MatMulgru_1/mul_2gru_1/strided_slice_7*
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( 
e
gru_1/strided_slice_8/stackConst*
valueB: *
dtype0*
_output_shapes
:
g
gru_1/strided_slice_8/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
gru_1/strided_slice_8/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
А
gru_1/strided_slice_8StridedSlicegru_1/gru_cell/bias/readgru_1/strided_slice_8/stackgru_1/strided_slice_8/stack_1gru_1/strided_slice_8/stack_2*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask 

gru_1/BiasAddBiasAddgru_1/MatMulgru_1/strided_slice_8*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0
e
gru_1/strided_slice_9/stackConst*
dtype0*
_output_shapes
:*
valueB:
g
gru_1/strided_slice_9/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
g
gru_1/strided_slice_9/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
А
gru_1/strided_slice_9StridedSlicegru_1/gru_cell/bias/readgru_1/strided_slice_9/stackgru_1/strided_slice_9/stack_1gru_1/strided_slice_9/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 

gru_1/BiasAdd_1BiasAddgru_1/MatMul_1gru_1/strided_slice_9*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
f
gru_1/strided_slice_10/stackConst*
_output_shapes
:*
valueB: *
dtype0
h
gru_1/strided_slice_10/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
h
gru_1/strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Д
gru_1/strided_slice_10StridedSlicegru_1/gru_cell/bias/readgru_1/strided_slice_10/stackgru_1/strided_slice_10/stack_1gru_1/strided_slice_10/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0

gru_1/BiasAdd_2BiasAddgru_1/MatMul_2gru_1/strided_slice_10*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
d
gru_1/mul_3Mul
gru_1/Tilegru_1/cond_3/Merge*
T0*'
_output_shapes
:џџџџџџџџџ
d
gru_1/mul_4Mul
gru_1/Tilegru_1/cond_4/Merge*'
_output_shapes
:џџџџџџџџџ*
T0
d
gru_1/mul_5Mul
gru_1/Tilegru_1/cond_5/Merge*
T0*'
_output_shapes
:џџџџџџџџџ
m
gru_1/strided_slice_11/stackConst*
valueB"        *
dtype0*
_output_shapes
:
o
gru_1/strided_slice_11/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
o
gru_1/strided_slice_11/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Ф
gru_1/strided_slice_11StridedSlice$gru_1/gru_cell/recurrent_kernel/readgru_1/strided_slice_11/stackgru_1/strided_slice_11/stack_1gru_1/strided_slice_11/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:

gru_1/MatMul_3MatMulgru_1/mul_3gru_1/strided_slice_11*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( *
T0
a
	gru_1/addAddgru_1/BiasAddgru_1/MatMul_3*
T0*'
_output_shapes
:џџџџџџџџџ
R
gru_1/mul_6/xConst*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
^
gru_1/mul_6Mulgru_1/mul_6/x	gru_1/add*
T0*'
_output_shapes
:џџџџџџџџџ
R
gru_1/add_1/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
`
gru_1/add_1Addgru_1/mul_6gru_1/add_1/y*
T0*'
_output_shapes
:џџџџџџџџџ
P
gru_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
R
gru_1/Const_1Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
t
gru_1/clip_by_value/MinimumMinimumgru_1/add_1gru_1/Const_1*'
_output_shapes
:џџџџџџџџџ*
T0
z
gru_1/clip_by_valueMaximumgru_1/clip_by_value/Minimumgru_1/Const*
T0*'
_output_shapes
:џџџџџџџџџ
m
gru_1/strided_slice_12/stackConst*
dtype0*
_output_shapes
:*
valueB"       
o
gru_1/strided_slice_12/stack_1Const*
dtype0*
_output_shapes
:*
valueB"        
o
gru_1/strided_slice_12/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Ф
gru_1/strided_slice_12StridedSlice$gru_1/gru_cell/recurrent_kernel/readgru_1/strided_slice_12/stackgru_1/strided_slice_12/stack_1gru_1/strided_slice_12/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:*
T0*
Index0

gru_1/MatMul_4MatMulgru_1/mul_4gru_1/strided_slice_12*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( *
T0
e
gru_1/add_2Addgru_1/BiasAdd_1gru_1/MatMul_4*'
_output_shapes
:џџџџџџџџџ*
T0
R
gru_1/mul_7/xConst*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
`
gru_1/mul_7Mulgru_1/mul_7/xgru_1/add_2*
T0*'
_output_shapes
:џџџџџџџџџ
R
gru_1/add_3/yConst*
dtype0*
_output_shapes
: *
valueB
 *   ?
`
gru_1/add_3Addgru_1/mul_7gru_1/add_3/y*'
_output_shapes
:џџџџџџџџџ*
T0
R
gru_1/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
R
gru_1/Const_3Const*
_output_shapes
: *
valueB
 *  ?*
dtype0
v
gru_1/clip_by_value_1/MinimumMinimumgru_1/add_3gru_1/Const_3*
T0*'
_output_shapes
:џџџџџџџџџ

gru_1/clip_by_value_1Maximumgru_1/clip_by_value_1/Minimumgru_1/Const_2*
T0*'
_output_shapes
:џџџџџџџџџ
h
gru_1/mul_8Mulgru_1/clip_by_value_1gru_1/mul_5*
T0*'
_output_shapes
:џџџџџџџџџ
m
gru_1/strided_slice_13/stackConst*
valueB"        *
dtype0*
_output_shapes
:
o
gru_1/strided_slice_13/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
o
gru_1/strided_slice_13/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
Ф
gru_1/strided_slice_13StridedSlice$gru_1/gru_cell/recurrent_kernel/readgru_1/strided_slice_13/stackgru_1/strided_slice_13/stack_1gru_1/strided_slice_13/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:*
T0*
Index0*
shrink_axis_mask 

gru_1/MatMul_5MatMulgru_1/mul_8gru_1/strided_slice_13*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ
e
gru_1/add_4Addgru_1/BiasAdd_2gru_1/MatMul_5*
T0*'
_output_shapes
:џџџџџџџџџ
Q

gru_1/ReluRelugru_1/add_4*
T0*'
_output_shapes
:џџџџџџџџџ
e
gru_1/mul_9Mulgru_1/clip_by_value
gru_1/Tile*
T0*'
_output_shapes
:џџџџџџџџџ
P
gru_1/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
	gru_1/subSubgru_1/sub/xgru_1/clip_by_value*'
_output_shapes
:џџџџџџџџџ*
T0
\
gru_1/mul_10Mul	gru_1/sub
gru_1/Relu*
T0*'
_output_shapes
:џџџџџџџџџ
_
gru_1/add_5Addgru_1/mul_9gru_1/mul_10*
T0*'
_output_shapes
:џџџџџџџџџ
ч
gru_1/TensorArrayTensorArrayV3gru_1/strided_slice* 
tensor_array_name	output_ta*
dtype0*
_output_shapes

:: *
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
ш
gru_1/TensorArray_1TensorArrayV3gru_1/strided_slice*
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*
tensor_array_name
input_ta*
dtype0*
_output_shapes

:: 
m
gru_1/TensorArrayUnstack/ShapeShapegru_1/transpose*
out_type0*
_output_shapes
:*
T0
v
,gru_1/TensorArrayUnstack/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
x
.gru_1/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
x
.gru_1/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
&gru_1/TensorArrayUnstack/strided_sliceStridedSlicegru_1/TensorArrayUnstack/Shape,gru_1/TensorArrayUnstack/strided_slice/stack.gru_1/TensorArrayUnstack/strided_slice/stack_1.gru_1/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
f
$gru_1/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
f
$gru_1/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ь
gru_1/TensorArrayUnstack/rangeRange$gru_1/TensorArrayUnstack/range/start&gru_1/TensorArrayUnstack/strided_slice$gru_1/TensorArrayUnstack/range/delta*#
_output_shapes
:џџџџџџџџџ*

Tidx0
њ
@gru_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3gru_1/TensorArray_1gru_1/TensorArrayUnstack/rangegru_1/transposegru_1/TensorArray_1:1*
T0*"
_class
loc:@gru_1/transpose*
_output_shapes
: 
L

gru_1/timeConst*
value	B : *
dtype0*
_output_shapes
: 
 
gru_1/while/EnterEnter
gru_1/time*
parallel_iterations *)

frame_namegru_1/while/while_context*
_output_shapes
: *
T0*
is_constant( 
Ћ
gru_1/while/Enter_1Entergru_1/TensorArray:1*)

frame_namegru_1/while/while_context*
_output_shapes
: *
T0*
is_constant( *
parallel_iterations 
Г
gru_1/while/Enter_2Enter
gru_1/Tile*
parallel_iterations *)

frame_namegru_1/while/while_context*'
_output_shapes
:џџџџџџџџџ*
T0*
is_constant( 
t
gru_1/while/MergeMergegru_1/while/Entergru_1/while/NextIteration*
T0*
N*
_output_shapes
: : 
z
gru_1/while/Merge_1Mergegru_1/while/Enter_1gru_1/while/NextIteration_1*
N*
_output_shapes
: : *
T0

gru_1/while/Merge_2Mergegru_1/while/Enter_2gru_1/while/NextIteration_2*
T0*
N*)
_output_shapes
:џџџџџџџџџ: 
d
gru_1/while/LessLessgru_1/while/Mergegru_1/while/Less/Enter*
_output_shapes
: *
T0
Ў
gru_1/while/Less/EnterEntergru_1/strided_slice*
T0*
is_constant(*
parallel_iterations *)

frame_namegru_1/while/while_context*
_output_shapes
: 
J
gru_1/while/LoopCondLoopCondgru_1/while/Less*
_output_shapes
: 

gru_1/while/SwitchSwitchgru_1/while/Mergegru_1/while/LoopCond*
T0*$
_class
loc:@gru_1/while/Merge*
_output_shapes
: : 

gru_1/while/Switch_1Switchgru_1/while/Merge_1gru_1/while/LoopCond*
_output_shapes
: : *
T0*&
_class
loc:@gru_1/while/Merge_1
Ж
gru_1/while/Switch_2Switchgru_1/while/Merge_2gru_1/while/LoopCond*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*
T0*&
_class
loc:@gru_1/while/Merge_2
W
gru_1/while/IdentityIdentitygru_1/while/Switch:1*
_output_shapes
: *
T0
[
gru_1/while/Identity_1Identitygru_1/while/Switch_1:1*
T0*
_output_shapes
: 
l
gru_1/while/Identity_2Identitygru_1/while/Switch_2:1*'
_output_shapes
:џџџџџџџџџ*
T0
Ъ
gru_1/while/TensorArrayReadV3TensorArrayReadV3#gru_1/while/TensorArrayReadV3/Entergru_1/while/Identity%gru_1/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:џџџџџџџџџ
П
#gru_1/while/TensorArrayReadV3/EnterEntergru_1/TensorArray_1*
T0*
is_constant(*
parallel_iterations *)

frame_namegru_1/while/while_context*
_output_shapes
:
ъ
%gru_1/while/TensorArrayReadV3/Enter_1Enter@gru_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *)

frame_namegru_1/while/while_context*
_output_shapes
: 
~
gru_1/while/mulMulgru_1/while/TensorArrayReadV3gru_1/while/mul/Enter*'
_output_shapes
:џџџџџџџџџ*
T0
Ф
gru_1/while/mul/EnterEntergru_1/cond/Merge*
T0*
is_constant(*
parallel_iterations *)

frame_namegru_1/while/while_context*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

gru_1/while/mul_1Mulgru_1/while/TensorArrayReadV3gru_1/while/mul_1/Enter*
T0*'
_output_shapes
:џџџџџџџџџ
Ш
gru_1/while/mul_1/EnterEntergru_1/cond_1/Merge*
T0*
is_constant(*
parallel_iterations *)

frame_namegru_1/while/while_context*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

gru_1/while/mul_2Mulgru_1/while/TensorArrayReadV3gru_1/while/mul_2/Enter*'
_output_shapes
:џџџџџџџџџ*
T0
Ш
gru_1/while/mul_2/EnterEntergru_1/cond_2/Merge*
T0*
is_constant(*
parallel_iterations *)

frame_namegru_1/while/while_context*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

gru_1/while/strided_slice/stackConst^gru_1/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

!gru_1/while/strided_slice/stack_1Const^gru_1/while/Identity*
valueB"       *
dtype0*
_output_shapes
:

!gru_1/while/strided_slice/stack_2Const^gru_1/while/Identity*
dtype0*
_output_shapes
:*
valueB"      
Ы
gru_1/while/strided_sliceStridedSlicegru_1/while/strided_slice/Entergru_1/while/strided_slice/stack!gru_1/while/strided_slice/stack_1!gru_1/while/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:*
T0*
Index0
Ц
gru_1/while/strided_slice/EnterEntergru_1/gru_cell/kernel/read*
parallel_iterations *)

frame_namegru_1/while/while_context*
_output_shapes

:0*
T0*
is_constant(
 
gru_1/while/MatMulMatMulgru_1/while/mulgru_1/while/strided_slice*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( *
T0

!gru_1/while/strided_slice_1/stackConst^gru_1/while/Identity*
valueB"       *
dtype0*
_output_shapes
:

#gru_1/while/strided_slice_1/stack_1Const^gru_1/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

#gru_1/while/strided_slice_1/stack_2Const^gru_1/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
г
gru_1/while/strided_slice_1StridedSlicegru_1/while/strided_slice/Enter!gru_1/while/strided_slice_1/stack#gru_1/while/strided_slice_1/stack_1#gru_1/while/strided_slice_1/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:*
Index0*
T0
І
gru_1/while/MatMul_1MatMulgru_1/while/mul_1gru_1/while/strided_slice_1*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( *
T0

!gru_1/while/strided_slice_2/stackConst^gru_1/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

#gru_1/while/strided_slice_2/stack_1Const^gru_1/while/Identity*
_output_shapes
:*
valueB"        *
dtype0

#gru_1/while/strided_slice_2/stack_2Const^gru_1/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
г
gru_1/while/strided_slice_2StridedSlicegru_1/while/strided_slice/Enter!gru_1/while/strided_slice_2/stack#gru_1/while/strided_slice_2/stack_1#gru_1/while/strided_slice_2/stack_2*
end_mask*
_output_shapes

:*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
І
gru_1/while/MatMul_2MatMulgru_1/while/mul_2gru_1/while/strided_slice_2*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( *
T0

!gru_1/while/strided_slice_3/stackConst^gru_1/while/Identity*
valueB: *
dtype0*
_output_shapes
:

#gru_1/while/strided_slice_3/stack_1Const^gru_1/while/Identity*
_output_shapes
:*
valueB:*
dtype0

#gru_1/while/strided_slice_3/stack_2Const^gru_1/while/Identity*
dtype0*
_output_shapes
:*
valueB:
б
gru_1/while/strided_slice_3StridedSlice!gru_1/while/strided_slice_3/Enter!gru_1/while/strided_slice_3/stack#gru_1/while/strided_slice_3/stack_1#gru_1/while/strided_slice_3/stack_2*
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask
Т
!gru_1/while/strided_slice_3/EnterEntergru_1/gru_cell/bias/read*)

frame_namegru_1/while/while_context*
_output_shapes
:0*
T0*
is_constant(*
parallel_iterations 

gru_1/while/BiasAddBiasAddgru_1/while/MatMulgru_1/while/strided_slice_3*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0

!gru_1/while/strided_slice_4/stackConst^gru_1/while/Identity*
_output_shapes
:*
valueB:*
dtype0

#gru_1/while/strided_slice_4/stack_1Const^gru_1/while/Identity*
valueB: *
dtype0*
_output_shapes
:

#gru_1/while/strided_slice_4/stack_2Const^gru_1/while/Identity*
valueB:*
dtype0*
_output_shapes
:
б
gru_1/while/strided_slice_4StridedSlice!gru_1/while/strided_slice_3/Enter!gru_1/while/strided_slice_4/stack#gru_1/while/strided_slice_4/stack_1#gru_1/while/strided_slice_4/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 

gru_1/while/BiasAdd_1BiasAddgru_1/while/MatMul_1gru_1/while/strided_slice_4*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0

!gru_1/while/strided_slice_5/stackConst^gru_1/while/Identity*
valueB: *
dtype0*
_output_shapes
:

#gru_1/while/strided_slice_5/stack_1Const^gru_1/while/Identity*
dtype0*
_output_shapes
:*
valueB: 

#gru_1/while/strided_slice_5/stack_2Const^gru_1/while/Identity*
valueB:*
dtype0*
_output_shapes
:
б
gru_1/while/strided_slice_5StridedSlice!gru_1/while/strided_slice_3/Enter!gru_1/while/strided_slice_5/stack#gru_1/while/strided_slice_5/stack_1#gru_1/while/strided_slice_5/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0

gru_1/while/BiasAdd_2BiasAddgru_1/while/MatMul_2gru_1/while/strided_slice_5*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ
{
gru_1/while/mul_3Mulgru_1/while/Identity_2gru_1/while/mul_3/Enter*
T0*'
_output_shapes
:џџџџџџџџџ
П
gru_1/while/mul_3/EnterEntergru_1/cond_3/Merge*
T0*
is_constant(*
parallel_iterations *)

frame_namegru_1/while/while_context*'
_output_shapes
:џџџџџџџџџ
{
gru_1/while/mul_4Mulgru_1/while/Identity_2gru_1/while/mul_4/Enter*
T0*'
_output_shapes
:џџџџџџџџџ
П
gru_1/while/mul_4/EnterEntergru_1/cond_4/Merge*
T0*
is_constant(*
parallel_iterations *)

frame_namegru_1/while/while_context*'
_output_shapes
:џџџџџџџџџ
{
gru_1/while/mul_5Mulgru_1/while/Identity_2gru_1/while/mul_5/Enter*'
_output_shapes
:џџџџџџџџџ*
T0
П
gru_1/while/mul_5/EnterEntergru_1/cond_5/Merge*
is_constant(*
parallel_iterations *)

frame_namegru_1/while/while_context*'
_output_shapes
:џџџџџџџџџ*
T0

!gru_1/while/strided_slice_6/stackConst^gru_1/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

#gru_1/while/strided_slice_6/stack_1Const^gru_1/while/Identity*
valueB"       *
dtype0*
_output_shapes
:

#gru_1/while/strided_slice_6/stack_2Const^gru_1/while/Identity*
dtype0*
_output_shapes
:*
valueB"      
е
gru_1/while/strided_slice_6StridedSlice!gru_1/while/strided_slice_6/Enter!gru_1/while/strided_slice_6/stack#gru_1/while/strided_slice_6/stack_1#gru_1/while/strided_slice_6/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:
в
!gru_1/while/strided_slice_6/EnterEnter$gru_1/gru_cell/recurrent_kernel/read*
is_constant(*
parallel_iterations *)

frame_namegru_1/while/while_context*
_output_shapes

:0*
T0
І
gru_1/while/MatMul_3MatMulgru_1/while/mul_3gru_1/while/strided_slice_6*
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( 
s
gru_1/while/addAddgru_1/while/BiasAddgru_1/while/MatMul_3*'
_output_shapes
:џџџџџџџџџ*
T0
o
gru_1/while/mul_6/xConst^gru_1/while/Identity*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
p
gru_1/while/mul_6Mulgru_1/while/mul_6/xgru_1/while/add*
T0*'
_output_shapes
:џџџџџџџџџ
o
gru_1/while/add_1/yConst^gru_1/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r
gru_1/while/add_1Addgru_1/while/mul_6gru_1/while/add_1/y*'
_output_shapes
:џџџџџџџџџ*
T0
m
gru_1/while/ConstConst^gru_1/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
o
gru_1/while/Const_1Const^gru_1/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

!gru_1/while/clip_by_value/MinimumMinimumgru_1/while/add_1gru_1/while/Const_1*'
_output_shapes
:џџџџџџџџџ*
T0

gru_1/while/clip_by_valueMaximum!gru_1/while/clip_by_value/Minimumgru_1/while/Const*'
_output_shapes
:џџџџџџџџџ*
T0

!gru_1/while/strided_slice_7/stackConst^gru_1/while/Identity*
dtype0*
_output_shapes
:*
valueB"       

#gru_1/while/strided_slice_7/stack_1Const^gru_1/while/Identity*
dtype0*
_output_shapes
:*
valueB"        

#gru_1/while/strided_slice_7/stack_2Const^gru_1/while/Identity*
dtype0*
_output_shapes
:*
valueB"      
е
gru_1/while/strided_slice_7StridedSlice!gru_1/while/strided_slice_6/Enter!gru_1/while/strided_slice_7/stack#gru_1/while/strided_slice_7/stack_1#gru_1/while/strided_slice_7/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:*
Index0*
T0*
shrink_axis_mask 
І
gru_1/while/MatMul_4MatMulgru_1/while/mul_4gru_1/while/strided_slice_7*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( *
T0
w
gru_1/while/add_2Addgru_1/while/BiasAdd_1gru_1/while/MatMul_4*'
_output_shapes
:џџџџџџџџџ*
T0
o
gru_1/while/mul_7/xConst^gru_1/while/Identity*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
r
gru_1/while/mul_7Mulgru_1/while/mul_7/xgru_1/while/add_2*
T0*'
_output_shapes
:џџџџџџџџџ
o
gru_1/while/add_3/yConst^gru_1/while/Identity*
valueB
 *   ?*
dtype0*
_output_shapes
: 
r
gru_1/while/add_3Addgru_1/while/mul_7gru_1/while/add_3/y*
T0*'
_output_shapes
:џџџџџџџџџ
o
gru_1/while/Const_2Const^gru_1/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
o
gru_1/while/Const_3Const^gru_1/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 

#gru_1/while/clip_by_value_1/MinimumMinimumgru_1/while/add_3gru_1/while/Const_3*'
_output_shapes
:џџџџџџџџџ*
T0

gru_1/while/clip_by_value_1Maximum#gru_1/while/clip_by_value_1/Minimumgru_1/while/Const_2*
T0*'
_output_shapes
:џџџџџџџџџ
z
gru_1/while/mul_8Mulgru_1/while/clip_by_value_1gru_1/while/mul_5*
T0*'
_output_shapes
:џџџџџџџџџ

!gru_1/while/strided_slice_8/stackConst^gru_1/while/Identity*
dtype0*
_output_shapes
:*
valueB"        

#gru_1/while/strided_slice_8/stack_1Const^gru_1/while/Identity*
valueB"        *
dtype0*
_output_shapes
:

#gru_1/while/strided_slice_8/stack_2Const^gru_1/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
е
gru_1/while/strided_slice_8StridedSlice!gru_1/while/strided_slice_6/Enter!gru_1/while/strided_slice_8/stack#gru_1/while/strided_slice_8/stack_1#gru_1/while/strided_slice_8/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:*
Index0*
T0*
shrink_axis_mask 
І
gru_1/while/MatMul_5MatMulgru_1/while/mul_8gru_1/while/strided_slice_8*
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( 
w
gru_1/while/add_4Addgru_1/while/BiasAdd_2gru_1/while/MatMul_5*'
_output_shapes
:џџџџџџџџџ*
T0
]
gru_1/while/ReluRelugru_1/while/add_4*
T0*'
_output_shapes
:џџџџџџџџџ
}
gru_1/while/mul_9Mulgru_1/while/clip_by_valuegru_1/while/Identity_2*'
_output_shapes
:џџџџџџџџџ*
T0
m
gru_1/while/sub/xConst^gru_1/while/Identity*
_output_shapes
: *
valueB
 *  ?*
dtype0
v
gru_1/while/subSubgru_1/while/sub/xgru_1/while/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџ
n
gru_1/while/mul_10Mulgru_1/while/subgru_1/while/Relu*'
_output_shapes
:џџџџџџџџџ*
T0
q
gru_1/while/add_5Addgru_1/while/mul_9gru_1/while/mul_10*
T0*'
_output_shapes
:џџџџџџџџџ

/gru_1/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV35gru_1/while/TensorArrayWrite/TensorArrayWriteV3/Entergru_1/while/Identitygru_1/while/add_5gru_1/while/Identity_1*
T0*$
_class
loc:@gru_1/while/add_5*
_output_shapes
: 
ѕ
5gru_1/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntergru_1/TensorArray*
T0*$
_class
loc:@gru_1/while/add_5*
parallel_iterations *
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:
l
gru_1/while/add_6/yConst^gru_1/while/Identity*
_output_shapes
: *
value	B :*
dtype0
d
gru_1/while/add_6Addgru_1/while/Identitygru_1/while/add_6/y*
_output_shapes
: *
T0
^
gru_1/while/NextIterationNextIterationgru_1/while/add_6*
_output_shapes
: *
T0
~
gru_1/while/NextIteration_1NextIteration/gru_1/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
q
gru_1/while/NextIteration_2NextIterationgru_1/while/add_5*'
_output_shapes
:џџџџџџџџџ*
T0
M
gru_1/while/ExitExitgru_1/while/Switch*
T0*
_output_shapes
: 
Q
gru_1/while/Exit_1Exitgru_1/while/Switch_1*
T0*
_output_shapes
: 
b
gru_1/while/Exit_2Exitgru_1/while/Switch_2*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
(gru_1/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3gru_1/TensorArraygru_1/while/Exit_1*$
_class
loc:@gru_1/TensorArray*
_output_shapes
: 

"gru_1/TensorArrayStack/range/startConst*$
_class
loc:@gru_1/TensorArray*
value	B : *
dtype0*
_output_shapes
: 

"gru_1/TensorArrayStack/range/deltaConst*
_output_shapes
: *$
_class
loc:@gru_1/TensorArray*
value	B :*
dtype0
ю
gru_1/TensorArrayStack/rangeRange"gru_1/TensorArrayStack/range/start(gru_1/TensorArrayStack/TensorArraySizeV3"gru_1/TensorArrayStack/range/delta*

Tidx0*$
_class
loc:@gru_1/TensorArray*#
_output_shapes
:џџџџџџџџџ

*gru_1/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3gru_1/TensorArraygru_1/TensorArrayStack/rangegru_1/while/Exit_1*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*$
element_shape:џџџџџџџџџ*$
_class
loc:@gru_1/TensorArray*
dtype0
O
gru_1/sub_1/yConst*
dtype0*
_output_shapes
: *
value	B :
T
gru_1/sub_1Subgru_1/while/Exitgru_1/sub_1/y*
T0*
_output_shapes
: 

gru_1/TensorArrayReadV3TensorArrayReadV3gru_1/TensorArraygru_1/sub_1gru_1/while/Exit_1*
dtype0*'
_output_shapes
:џџџџџџџџџ
k
gru_1/transpose_1/permConst*!
valueB"          *
dtype0*
_output_shapes
:
Ў
gru_1/transpose_1	Transpose*gru_1/TensorArrayStack/TensorArrayGatherV3gru_1/transpose_1/perm*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
Tperm0*
T0
Ѓ
/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*!
_class
loc:@dense_1/kernel*
valueB"      

-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *0П*
dtype0*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
valueB
 *0?*
dtype0*
_output_shapes
: 
ы
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*
seed2 *
dtype0*
_output_shapes

:*

seed 
ж
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ш
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:
к
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:
Ѕ
dense_1/kernel
VariableV2*
shared_name *!
_class
loc:@dense_1/kernel*
	container *
shape
:*
dtype0*
_output_shapes

:
Я
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:
{
dense_1/kernel/readIdentitydense_1/kernel*
_output_shapes

:*
T0*!
_class
loc:@dense_1/kernel

.dense_1/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
_class
loc:@dense_1/bias*
valueB:

$dense_1/bias/Initializer/zeros/ConstConst*
_class
loc:@dense_1/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
д
dense_1/bias/Initializer/zerosFill.dense_1/bias/Initializer/zeros/shape_as_tensor$dense_1/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_1/bias*

index_type0*
_output_shapes
:

dense_1/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@dense_1/bias*
	container *
shape:
К
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
q
dense_1/bias/readIdentitydense_1/bias*
_output_shapes
:*
T0*
_class
loc:@dense_1/bias

dense_1/MatMulMatMulgru_1/TensorArrayReadV3dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b( 

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
\
PlaceholderPlaceholder*
shape
:0*
dtype0*
_output_shapes

:0
А
AssignAssigngru_1/gru_cell/kernelPlaceholder*
validate_shape(*
_output_shapes

:0*
use_locking( *
T0*(
_class
loc:@gru_1/gru_cell/kernel
^
Placeholder_1Placeholder*
shape
:0*
dtype0*
_output_shapes

:0
Ш
Assign_1Assigngru_1/gru_cell/recurrent_kernelPlaceholder_1*
T0*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
validate_shape(*
_output_shapes

:0*
use_locking( 
V
Placeholder_2Placeholder*
dtype0*
_output_shapes
:0*
shape:0
Ќ
Assign_2Assigngru_1/gru_cell/biasPlaceholder_2*
validate_shape(*
_output_shapes
:0*
use_locking( *
T0*&
_class
loc:@gru_1/gru_cell/bias
^
Placeholder_3Placeholder*
_output_shapes

:*
shape
:*
dtype0
І
Assign_3Assigndense_1/kernelPlaceholder_3*
use_locking( *
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:
V
Placeholder_4Placeholder*
dtype0*
_output_shapes
:*
shape:

Assign_4Assigndense_1/biasPlaceholder_4*
use_locking( *
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:

IsVariableInitializedIsVariableInitializedgru_1/gru_cell/kernel*(
_class
loc:@gru_1/gru_cell/kernel*
dtype0*
_output_shapes
: 
Њ
IsVariableInitialized_1IsVariableInitializedgru_1/gru_cell/recurrent_kernel*
dtype0*
_output_shapes
: *2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel

IsVariableInitialized_2IsVariableInitializedgru_1/gru_cell/bias*&
_class
loc:@gru_1/gru_cell/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializeddense_1/kernel*
dtype0*
_output_shapes
: *!
_class
loc:@dense_1/kernel

IsVariableInitialized_4IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 

initNoOp^gru_1/gru_cell/kernel/Assign'^gru_1/gru_cell/recurrent_kernel/Assign^gru_1/gru_cell/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign
i
$RMSprop/lr/Initializer/initial_valueConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
y

RMSprop/lrVarHandleOp*
	container *
_output_shapes
: *
shape: *
shared_name
RMSprop/lr*
dtype0
e
+RMSprop/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOp
RMSprop/lr*
_output_shapes
: 

RMSprop/lr/AssignAssignVariableOp
RMSprop/lr$RMSprop/lr/Initializer/initial_value*
_class
loc:@RMSprop/lr*
dtype0

RMSprop/lr/Read/ReadVariableOpReadVariableOp
RMSprop/lr*
_class
loc:@RMSprop/lr*
dtype0*
_output_shapes
: 
j
%RMSprop/rho/Initializer/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
{
RMSprop/rhoVarHandleOp*
shared_nameRMSprop/rho*
dtype0*
	container *
_output_shapes
: *
shape: 
g
,RMSprop/rho/IsInitialized/VarIsInitializedOpVarIsInitializedOpRMSprop/rho*
_output_shapes
: 

RMSprop/rho/AssignAssignVariableOpRMSprop/rho%RMSprop/rho/Initializer/initial_value*
_class
loc:@RMSprop/rho*
dtype0

RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
_class
loc:@RMSprop/rho*
dtype0
l
'RMSprop/decay/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    

RMSprop/decayVarHandleOp*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_nameRMSprop/decay
k
.RMSprop/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpRMSprop/decay*
_output_shapes
: 

RMSprop/decay/AssignAssignVariableOpRMSprop/decay'RMSprop/decay/Initializer/initial_value* 
_class
loc:@RMSprop/decay*
dtype0

!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay* 
_class
loc:@RMSprop/decay*
dtype0*
_output_shapes
: 
n
,RMSprop/iterations/Initializer/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 

RMSprop/iterationsVarHandleOp*
dtype0	*
	container *
_output_shapes
: *
shape: *#
shared_nameRMSprop/iterations
u
3RMSprop/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpRMSprop/iterations*
_output_shapes
: 
Ѓ
RMSprop/iterations/AssignAssignVariableOpRMSprop/iterations,RMSprop/iterations/Initializer/initial_value*%
_class
loc:@RMSprop/iterations*
dtype0	

&RMSprop/iterations/Read/ReadVariableOpReadVariableOpRMSprop/iterations*%
_class
loc:@RMSprop/iterations*
dtype0	*
_output_shapes
: 

dense_1_targetPlaceholder*
dtype0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ
i
dense_1_sample_weights/inputConst*
valueB*  ?*
dtype0*
_output_shapes
:

dense_1_sample_weightsPlaceholderWithDefaultdense_1_sample_weights/input*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
x
loss/dense_1_loss/subSubdense_1/BiasAdddense_1_target*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
n
loss/dense_1_loss/AbsAbsloss/dense_1_loss/sub*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
s
(loss/dense_1_loss/Mean/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Њ
loss/dense_1_loss/MeanMeanloss/dense_1_loss/Abs(loss/dense_1_loss/Mean/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0
m
*loss/dense_1_loss/Mean_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
Џ
loss/dense_1_loss/Mean_1Meanloss/dense_1_loss/Mean*loss/dense_1_loss/Mean_1/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0*
T0
|
loss/dense_1_loss/mulMulloss/dense_1_loss/Mean_1dense_1_sample_weights*#
_output_shapes
:џџџџџџџџџ*
T0
a
loss/dense_1_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/dense_1_loss/NotEqualNotEqualdense_1_sample_weightsloss/dense_1_loss/NotEqual/y*
T0*#
_output_shapes
:џџџџџџџџџ
w
loss/dense_1_loss/CastCastloss/dense_1_loss/NotEqual*

SrcT0
*

DstT0*#
_output_shapes
:џџџџџџџџџ
a
loss/dense_1_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:

loss/dense_1_loss/Mean_2Meanloss/dense_1_loss/Castloss/dense_1_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

loss/dense_1_loss/truedivRealDivloss/dense_1_loss/mulloss/dense_1_loss/Mean_2*
T0*#
_output_shapes
:џџџџџџџџџ
c
loss/dense_1_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_1_loss/Mean_3Meanloss/dense_1_loss/truedivloss/dense_1_loss/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O

loss/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
V
loss/mulMul
loss/mul/xloss/dense_1_loss/Mean_3*
T0*
_output_shapes
: 

metrics/mean_absolute_error/subSubdense_1/BiasAdddense_1_target*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

metrics/mean_absolute_error/AbsAbsmetrics/mean_absolute_error/sub*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
}
2metrics/mean_absolute_error/Mean/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ш
 metrics/mean_absolute_error/MeanMeanmetrics/mean_absolute_error/Abs2metrics/mean_absolute_error/Mean/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0
k
!metrics/mean_absolute_error/ConstConst*
valueB: *
dtype0*
_output_shapes
:
­
"metrics/mean_absolute_error/Mean_1Mean metrics/mean_absolute_error/Mean!metrics/mean_absolute_error/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

 training/RMSprop/gradients/ShapeConst*
_class
loc:@loss/mul*
valueB *
dtype0*
_output_shapes
: 

$training/RMSprop/gradients/grad_ys_0Const*
_class
loc:@loss/mul*
valueB
 *  ?*
dtype0*
_output_shapes
: 
П
training/RMSprop/gradients/FillFill training/RMSprop/gradients/Shape$training/RMSprop/gradients/grad_ys_0*
T0*
_class
loc:@loss/mul*

index_type0*
_output_shapes
: 

"training/RMSprop/gradients/f_countConst*%
_class
loc:@gru_1/while/Exit_1*
value	B : *
dtype0*
_output_shapes
: 
ђ
$training/RMSprop/gradients/f_count_1Enter"training/RMSprop/gradients/f_count*
is_constant( *
_output_shapes
: *)

frame_namegru_1/while/while_context*
T0*%
_class
loc:@gru_1/while/Exit_1*
parallel_iterations 
Ь
 training/RMSprop/gradients/MergeMerge$training/RMSprop/gradients/f_count_1(training/RMSprop/gradients/NextIteration*
T0*%
_class
loc:@gru_1/while/Exit_1*
N*
_output_shapes
: : 
­
!training/RMSprop/gradients/SwitchSwitch training/RMSprop/gradients/Mergegru_1/while/LoopCond*
T0*%
_class
loc:@gru_1/while/Exit_1*
_output_shapes
: : 
 
 training/RMSprop/gradients/Add/yConst^gru_1/while/Identity*%
_class
loc:@gru_1/while/Exit_1*
value	B :*
dtype0*
_output_shapes
: 
Д
training/RMSprop/gradients/AddAdd#training/RMSprop/gradients/Switch:1 training/RMSprop/gradients/Add/y*
T0*%
_class
loc:@gru_1/while/Exit_1*
_output_shapes
: 
$
(training/RMSprop/gradients/NextIterationNextIterationtraining/RMSprop/gradients/Addn^training/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2T^training/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPushV2V^training/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPushV2_1T^training/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPushV2V^training/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPushV2_1B^training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/StackPushV2D^training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/StackPushV2U^training/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPushV2W^training/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPushV2_1C^training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/StackPushV2E^training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/StackPushV2R^training/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/StackPushV2S^training/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/StackPushV2\^training/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/StackPushV2T^training/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPushV2V^training/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPushV2_1X^training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/StackPushV2d^training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPushV2H^training/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/StackPushV2J^training/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/StackPushV2T^training/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/StackPushV2H^training/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/StackPushV2J^training/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/StackPushV2T^training/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPushV2V^training/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPushV2_1B^training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/StackPushV2D^training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/StackPushV2T^training/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/StackPushV2B^training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/StackPushV2U^training/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/StackPushV2^^training/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPushV2T^training/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPushV2V^training/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPushV2_1R^training/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPushV2T^training/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPushV2_1Z^training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/StackPushV2f^training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPushV2H^training/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/StackPushV2J^training/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/StackPushV2T^training/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/StackPushV2F^training/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/StackPushV2H^training/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/StackPushV2T^training/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPushV2V^training/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPushV2_1T^training/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/StackPushV2B^training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/StackPushV2T^training/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPushV2V^training/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPushV2_1H^training/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/StackPushV2J^training/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/StackPushV2H^training/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/StackPushV2J^training/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/StackPushV2T^training/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPushV2V^training/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPushV2_1*
_output_shapes
: *
T0*%
_class
loc:@gru_1/while/Exit_1

$training/RMSprop/gradients/f_count_2Exit!training/RMSprop/gradients/Switch*
_output_shapes
: *
T0*%
_class
loc:@gru_1/while/Exit_1

"training/RMSprop/gradients/b_countConst*%
_class
loc:@gru_1/while/Exit_1*
value	B :*
dtype0*
_output_shapes
: 

$training/RMSprop/gradients/b_count_1Enter$training/RMSprop/gradients/f_count_2*
_output_shapes
: *D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*%
_class
loc:@gru_1/while/Exit_1*
parallel_iterations *
is_constant( 
а
"training/RMSprop/gradients/Merge_1Merge$training/RMSprop/gradients/b_count_1*training/RMSprop/gradients/NextIteration_1*
T0*%
_class
loc:@gru_1/while/Exit_1*
N*
_output_shapes
: : 
в
'training/RMSprop/gradients/GreaterEqualGreaterEqual"training/RMSprop/gradients/Merge_1-training/RMSprop/gradients/GreaterEqual/Enter*
T0*%
_class
loc:@gru_1/while/Exit_1*
_output_shapes
: 

-training/RMSprop/gradients/GreaterEqual/EnterEnter"training/RMSprop/gradients/b_count*
is_constant(*
_output_shapes
: *D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*%
_class
loc:@gru_1/while/Exit_1*
parallel_iterations 

$training/RMSprop/gradients/b_count_2LoopCond'training/RMSprop/gradients/GreaterEqual*
_output_shapes
: *%
_class
loc:@gru_1/while/Exit_1
С
#training/RMSprop/gradients/Switch_1Switch"training/RMSprop/gradients/Merge_1$training/RMSprop/gradients/b_count_2*
T0*%
_class
loc:@gru_1/while/Exit_1*
_output_shapes
: : 
У
training/RMSprop/gradients/SubSub%training/RMSprop/gradients/Switch_1:1-training/RMSprop/gradients/GreaterEqual/Enter*
T0*%
_class
loc:@gru_1/while/Exit_1*
_output_shapes
: 

*training/RMSprop/gradients/NextIteration_1NextIterationtraining/RMSprop/gradients/Subi^training/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*%
_class
loc:@gru_1/while/Exit_1*
_output_shapes
: 

$training/RMSprop/gradients/b_count_3Exit#training/RMSprop/gradients/Switch_1*
T0*%
_class
loc:@gru_1/while/Exit_1*
_output_shapes
: 
Ќ
,training/RMSprop/gradients/loss/mul_grad/MulMultraining/RMSprop/gradients/Fillloss/dense_1_loss/Mean_3*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
 
.training/RMSprop/gradients/loss/mul_grad/Mul_1Multraining/RMSprop/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
Н
Ftraining/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Reshape/shapeConst*+
_class!
loc:@loss/dense_1_loss/Mean_3*
valueB:*
dtype0*
_output_shapes
:
Ѓ
@training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/ReshapeReshape.training/RMSprop/gradients/loss/mul_grad/Mul_1Ftraining/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Reshape/shape*+
_class!
loc:@loss/dense_1_loss/Mean_3*
Tshape0*
_output_shapes
:*
T0
Ф
>training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/ShapeShapeloss/dense_1_loss/truediv*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_3*
out_type0
Д
=training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/TileTile@training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Reshape>training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Shape*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_3*#
_output_shapes
:џџџџџџџџџ*

Tmultiples0
Ц
@training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Shape_1Shapeloss/dense_1_loss/truediv*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_3*
out_type0
А
@training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Shape_2Const*+
_class!
loc:@loss/dense_1_loss/Mean_3*
valueB *
dtype0*
_output_shapes
: 
Е
>training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/ConstConst*+
_class!
loc:@loss/dense_1_loss/Mean_3*
valueB: *
dtype0*
_output_shapes
:
В
=training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/ProdProd@training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Shape_1>training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Const*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_3*
_output_shapes
: 
З
@training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Const_1Const*+
_class!
loc:@loss/dense_1_loss/Mean_3*
valueB: *
dtype0*
_output_shapes
:
Ж
?training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Prod_1Prod@training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Shape_2@training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Const_1*+
_class!
loc:@loss/dense_1_loss/Mean_3*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Б
Btraining/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Maximum/yConst*+
_class!
loc:@loss/dense_1_loss/Mean_3*
value	B :*
dtype0*
_output_shapes
: 

@training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/MaximumMaximum?training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Prod_1Btraining/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Maximum/y*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_1_loss/Mean_3

Atraining/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/floordivFloorDiv=training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Prod@training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Maximum*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_3*
_output_shapes
: 
х
=training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/CastCastAtraining/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/floordiv*+
_class!
loc:@loss/dense_1_loss/Mean_3*

DstT0*
_output_shapes
: *

SrcT0
Є
@training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/truedivRealDiv=training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Tile=training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_3
Т
?training/RMSprop/gradients/loss/dense_1_loss/truediv_grad/ShapeShapeloss/dense_1_loss/mul*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*
out_type0*
_output_shapes
:
В
Atraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/Shape_1Const*,
_class"
 loc:@loss/dense_1_loss/truediv*
valueB *
dtype0*
_output_shapes
: 
з
Otraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs?training/RMSprop/gradients/loss/dense_1_loss/truediv_grad/ShapeAtraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/Shape_1*,
_class"
 loc:@loss/dense_1_loss/truediv*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

Atraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/RealDivRealDiv@training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/truedivloss/dense_1_loss/Mean_2*,
_class"
 loc:@loss/dense_1_loss/truediv*#
_output_shapes
:џџџџџџџџџ*
T0
Ц
=training/RMSprop/gradients/loss/dense_1_loss/truediv_grad/SumSumAtraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/RealDivOtraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/BroadcastGradientArgs*,
_class"
 loc:@loss/dense_1_loss/truediv*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ж
Atraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/ReshapeReshape=training/RMSprop/gradients/loss/dense_1_loss/truediv_grad/Sum?training/RMSprop/gradients/loss/dense_1_loss/truediv_grad/Shape*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*
Tshape0*#
_output_shapes
:џџџџџџџџџ
З
=training/RMSprop/gradients/loss/dense_1_loss/truediv_grad/NegNegloss/dense_1_loss/mul*,
_class"
 loc:@loss/dense_1_loss/truediv*#
_output_shapes
:џџџџџџџџџ*
T0

Ctraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/RealDiv_1RealDiv=training/RMSprop/gradients/loss/dense_1_loss/truediv_grad/Negloss/dense_1_loss/Mean_2*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*#
_output_shapes
:џџџџџџџџџ

Ctraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/RealDiv_2RealDivCtraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/RealDiv_1loss/dense_1_loss/Mean_2*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*#
_output_shapes
:џџџџџџџџџ
Ї
=training/RMSprop/gradients/loss/dense_1_loss/truediv_grad/mulMul@training/RMSprop/gradients/loss/dense_1_loss/Mean_3_grad/truedivCtraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*#
_output_shapes
:џџџџџџџџџ
Ц
?training/RMSprop/gradients/loss/dense_1_loss/truediv_grad/Sum_1Sum=training/RMSprop/gradients/loss/dense_1_loss/truediv_grad/mulQtraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv
Џ
Ctraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/Reshape_1Reshape?training/RMSprop/gradients/loss/dense_1_loss/truediv_grad/Sum_1Atraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*
Tshape0*
_output_shapes
: 
Н
;training/RMSprop/gradients/loss/dense_1_loss/mul_grad/ShapeShapeloss/dense_1_loss/Mean_1*
T0*(
_class
loc:@loss/dense_1_loss/mul*
out_type0*
_output_shapes
:
Н
=training/RMSprop/gradients/loss/dense_1_loss/mul_grad/Shape_1Shapedense_1_sample_weights*
T0*(
_class
loc:@loss/dense_1_loss/mul*
out_type0*
_output_shapes
:
Ч
Ktraining/RMSprop/gradients/loss/dense_1_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs;training/RMSprop/gradients/loss/dense_1_loss/mul_grad/Shape=training/RMSprop/gradients/loss/dense_1_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_1_loss/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ѓ
9training/RMSprop/gradients/loss/dense_1_loss/mul_grad/MulMulAtraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/Reshapedense_1_sample_weights*
T0*(
_class
loc:@loss/dense_1_loss/mul*#
_output_shapes
:џџџџџџџџџ
В
9training/RMSprop/gradients/loss/dense_1_loss/mul_grad/SumSum9training/RMSprop/gradients/loss/dense_1_loss/mul_grad/MulKtraining/RMSprop/gradients/loss/dense_1_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*(
_class
loc:@loss/dense_1_loss/mul
І
=training/RMSprop/gradients/loss/dense_1_loss/mul_grad/ReshapeReshape9training/RMSprop/gradients/loss/dense_1_loss/mul_grad/Sum;training/RMSprop/gradients/loss/dense_1_loss/mul_grad/Shape*
T0*(
_class
loc:@loss/dense_1_loss/mul*
Tshape0*#
_output_shapes
:џџџџџџџџџ
ї
;training/RMSprop/gradients/loss/dense_1_loss/mul_grad/Mul_1Mulloss/dense_1_loss/Mean_1Atraining/RMSprop/gradients/loss/dense_1_loss/truediv_grad/Reshape*
T0*(
_class
loc:@loss/dense_1_loss/mul*#
_output_shapes
:џџџџџџџџџ
И
;training/RMSprop/gradients/loss/dense_1_loss/mul_grad/Sum_1Sum;training/RMSprop/gradients/loss/dense_1_loss/mul_grad/Mul_1Mtraining/RMSprop/gradients/loss/dense_1_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*(
_class
loc:@loss/dense_1_loss/mul
Ќ
?training/RMSprop/gradients/loss/dense_1_loss/mul_grad/Reshape_1Reshape;training/RMSprop/gradients/loss/dense_1_loss/mul_grad/Sum_1=training/RMSprop/gradients/loss/dense_1_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_1_loss/mul*
Tshape0*#
_output_shapes
:џџџџџџџџџ
С
>training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/ShapeShapeloss/dense_1_loss/Mean*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_1*
out_type0
Ќ
=training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/SizeConst*+
_class!
loc:@loss/dense_1_loss/Mean_1*
value	B :*
dtype0*
_output_shapes
: 
ў
<training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/addAdd*loss/dense_1_loss/Mean_1/reduction_indices=training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Size*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_1*
_output_shapes
: 

<training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/modFloorMod<training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/add=training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Size*+
_class!
loc:@loss/dense_1_loss/Mean_1*
_output_shapes
: *
T0
З
@training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Shape_1Const*+
_class!
loc:@loss/dense_1_loss/Mean_1*
valueB: *
dtype0*
_output_shapes
:
Г
Dtraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/range/startConst*+
_class!
loc:@loss/dense_1_loss/Mean_1*
value	B : *
dtype0*
_output_shapes
: 
Г
Dtraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/range/deltaConst*
_output_shapes
: *+
_class!
loc:@loss/dense_1_loss/Mean_1*
value	B :*
dtype0
ч
>training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/rangeRangeDtraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/range/start=training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/SizeDtraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/range/delta*
_output_shapes
:*

Tidx0*+
_class!
loc:@loss/dense_1_loss/Mean_1
В
Ctraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Fill/valueConst*
_output_shapes
: *+
_class!
loc:@loss/dense_1_loss/Mean_1*
value	B :*
dtype0
Ў
=training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/FillFill@training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Shape_1Ctraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Fill/value*+
_class!
loc:@loss/dense_1_loss/Mean_1*

index_type0*
_output_shapes
: *
T0
И
Ftraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/DynamicStitchDynamicStitch>training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/range<training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/mod>training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Shape=training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Fill*#
_output_shapes
:џџџџџџџџџ*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_1*
N
Б
Btraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Maximum/yConst*+
_class!
loc:@loss/dense_1_loss/Mean_1*
value	B :*
dtype0*
_output_shapes
: 
В
@training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/MaximumMaximumFtraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/DynamicStitchBtraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_1*#
_output_shapes
:џџџџџџџџџ
Њ
Atraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/floordivFloorDiv>training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Shape@training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Maximum*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_1*#
_output_shapes
:џџџџџџџџџ
А
@training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/ReshapeReshape=training/RMSprop/gradients/loss/dense_1_loss/mul_grad/ReshapeFtraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/DynamicStitch*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_1*
Tshape0*
_output_shapes
:
Ќ
=training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/TileTile@training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/ReshapeAtraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/floordiv*+
_class!
loc:@loss/dense_1_loss/Mean_1*
_output_shapes
:*

Tmultiples0*
T0
У
@training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Shape_2Shapeloss/dense_1_loss/Mean*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_1*
out_type0*
_output_shapes
:
Х
@training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Shape_3Shapeloss/dense_1_loss/Mean_1*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_1*
out_type0*
_output_shapes
:
Е
>training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/ConstConst*+
_class!
loc:@loss/dense_1_loss/Mean_1*
valueB: *
dtype0*
_output_shapes
:
В
=training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/ProdProd@training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Shape_2>training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Const*+
_class!
loc:@loss/dense_1_loss/Mean_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
З
@training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Const_1Const*+
_class!
loc:@loss/dense_1_loss/Mean_1*
valueB: *
dtype0*
_output_shapes
:
Ж
?training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Prod_1Prod@training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Shape_3@training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Const_1*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_1*
_output_shapes
: *
	keep_dims( *

Tidx0
Г
Dtraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_1_loss/Mean_1*
value	B :
Ђ
Btraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Maximum_1Maximum?training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Prod_1Dtraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Maximum_1/y*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_1_loss/Mean_1
 
Ctraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/floordiv_1FloorDiv=training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/ProdBtraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Maximum_1*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_1_loss/Mean_1
ч
=training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/CastCastCtraining/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/floordiv_1*+
_class!
loc:@loss/dense_1_loss/Mean_1*

DstT0*
_output_shapes
: *

SrcT0
Є
@training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/truedivRealDiv=training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Tile=training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/Cast*+
_class!
loc:@loss/dense_1_loss/Mean_1*#
_output_shapes
:џџџџџџџџџ*
T0
М
<training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/ShapeShapeloss/dense_1_loss/Abs*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
out_type0*
_output_shapes
:
Ј
;training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/SizeConst*)
_class
loc:@loss/dense_1_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
є
:training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/addAdd(loss/dense_1_loss/Mean/reduction_indices;training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Size*
_output_shapes
: *
T0*)
_class
loc:@loss/dense_1_loss/Mean

:training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/modFloorMod:training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/add;training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: 
Ќ
>training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Shape_1Const*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_1_loss/Mean*
valueB 
Џ
Btraining/RMSprop/gradients/loss/dense_1_loss/Mean_grad/range/startConst*)
_class
loc:@loss/dense_1_loss/Mean*
value	B : *
dtype0*
_output_shapes
: 
Џ
Btraining/RMSprop/gradients/loss/dense_1_loss/Mean_grad/range/deltaConst*)
_class
loc:@loss/dense_1_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
н
<training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/rangeRangeBtraining/RMSprop/gradients/loss/dense_1_loss/Mean_grad/range/start;training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/SizeBtraining/RMSprop/gradients/loss/dense_1_loss/Mean_grad/range/delta*

Tidx0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
:
Ў
Atraining/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Fill/valueConst*)
_class
loc:@loss/dense_1_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
Є
;training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/FillFill>training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Shape_1Atraining/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Fill/value*
_output_shapes
: *
T0*)
_class
loc:@loss/dense_1_loss/Mean*

index_type0
Ќ
Dtraining/RMSprop/gradients/loss/dense_1_loss/Mean_grad/DynamicStitchDynamicStitch<training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/range:training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/mod<training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Shape;training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Fill*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
N*#
_output_shapes
:џџџџџџџџџ
­
@training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Maximum/yConst*)
_class
loc:@loss/dense_1_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
Њ
>training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/MaximumMaximumDtraining/RMSprop/gradients/loss/dense_1_loss/Mean_grad/DynamicStitch@training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Maximum/y*
T0*)
_class
loc:@loss/dense_1_loss/Mean*#
_output_shapes
:џџџџџџџџџ

?training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/floordivFloorDiv<training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Shape>training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Maximum*
_output_shapes
:*
T0*)
_class
loc:@loss/dense_1_loss/Mean
­
>training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/ReshapeReshape@training/RMSprop/gradients/loss/dense_1_loss/Mean_1_grad/truedivDtraining/RMSprop/gradients/loss/dense_1_loss/Mean_grad/DynamicStitch*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
Tshape0*
_output_shapes
:
М
;training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/TileTile>training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Reshape?training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/floordiv*
T0*)
_class
loc:@loss/dense_1_loss/Mean*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*

Tmultiples0
О
>training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Shape_2Shapeloss/dense_1_loss/Abs*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
out_type0*
_output_shapes
:
П
>training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Shape_3Shapeloss/dense_1_loss/Mean*
_output_shapes
:*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
out_type0
Б
<training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/ConstConst*)
_class
loc:@loss/dense_1_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
Њ
;training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/ProdProd>training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Shape_2<training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Const*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: *
	keep_dims( *

Tidx0
Г
>training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Const_1Const*)
_class
loc:@loss/dense_1_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
Ў
=training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Prod_1Prod>training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Shape_3>training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Const_1*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: *
	keep_dims( *

Tidx0
Џ
Btraining/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Maximum_1/yConst*)
_class
loc:@loss/dense_1_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 

@training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Maximum_1Maximum=training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Prod_1Btraining/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Maximum_1/y*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: *
T0

Atraining/RMSprop/gradients/loss/dense_1_loss/Mean_grad/floordiv_1FloorDiv;training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Prod@training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Maximum_1*
_output_shapes
: *
T0*)
_class
loc:@loss/dense_1_loss/Mean
с
;training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/CastCastAtraining/RMSprop/gradients/loss/dense_1_loss/Mean_grad/floordiv_1*

SrcT0*)
_class
loc:@loss/dense_1_loss/Mean*

DstT0*
_output_shapes
: 
Љ
>training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/truedivRealDiv;training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Tile;training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/Cast*
T0*)
_class
loc:@loss/dense_1_loss/Mean*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
О
:training/RMSprop/gradients/loss/dense_1_loss/Abs_grad/SignSignloss/dense_1_loss/sub*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0*(
_class
loc:@loss/dense_1_loss/Abs
Ё
9training/RMSprop/gradients/loss/dense_1_loss/Abs_grad/mulMul>training/RMSprop/gradients/loss/dense_1_loss/Mean_grad/truediv:training/RMSprop/gradients/loss/dense_1_loss/Abs_grad/Sign*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0*(
_class
loc:@loss/dense_1_loss/Abs
Д
;training/RMSprop/gradients/loss/dense_1_loss/sub_grad/ShapeShapedense_1/BiasAdd*
T0*(
_class
loc:@loss/dense_1_loss/sub*
out_type0*
_output_shapes
:
Е
=training/RMSprop/gradients/loss/dense_1_loss/sub_grad/Shape_1Shapedense_1_target*
_output_shapes
:*
T0*(
_class
loc:@loss/dense_1_loss/sub*
out_type0
Ч
Ktraining/RMSprop/gradients/loss/dense_1_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs;training/RMSprop/gradients/loss/dense_1_loss/sub_grad/Shape=training/RMSprop/gradients/loss/dense_1_loss/sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*(
_class
loc:@loss/dense_1_loss/sub
В
9training/RMSprop/gradients/loss/dense_1_loss/sub_grad/SumSum9training/RMSprop/gradients/loss/dense_1_loss/Abs_grad/mulKtraining/RMSprop/gradients/loss/dense_1_loss/sub_grad/BroadcastGradientArgs*
T0*(
_class
loc:@loss/dense_1_loss/sub*
_output_shapes
:*
	keep_dims( *

Tidx0
Њ
=training/RMSprop/gradients/loss/dense_1_loss/sub_grad/ReshapeReshape9training/RMSprop/gradients/loss/dense_1_loss/sub_grad/Sum;training/RMSprop/gradients/loss/dense_1_loss/sub_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
T0*(
_class
loc:@loss/dense_1_loss/sub*
Tshape0
Ж
;training/RMSprop/gradients/loss/dense_1_loss/sub_grad/Sum_1Sum9training/RMSprop/gradients/loss/dense_1_loss/Abs_grad/mulMtraining/RMSprop/gradients/loss/dense_1_loss/sub_grad/BroadcastGradientArgs:1*
T0*(
_class
loc:@loss/dense_1_loss/sub*
_output_shapes
:*
	keep_dims( *

Tidx0
Ъ
9training/RMSprop/gradients/loss/dense_1_loss/sub_grad/NegNeg;training/RMSprop/gradients/loss/dense_1_loss/sub_grad/Sum_1*
T0*(
_class
loc:@loss/dense_1_loss/sub*
_output_shapes
:
З
?training/RMSprop/gradients/loss/dense_1_loss/sub_grad/Reshape_1Reshape9training/RMSprop/gradients/loss/dense_1_loss/sub_grad/Neg=training/RMSprop/gradients/loss/dense_1_loss/sub_grad/Shape_1*(
_class
loc:@loss/dense_1_loss/sub*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
щ
;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad=training/RMSprop/gradients/loss/dense_1_loss/sub_grad/Reshape*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes
:

5training/RMSprop/gradients/dense_1/MatMul_grad/MatMulMatMul=training/RMSprop/gradients/loss/dense_1_loss/sub_grad/Reshapedense_1/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b(*
T0*!
_class
loc:@dense_1/MatMul

7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1MatMulgru_1/TensorArrayReadV3=training/RMSprop/gradients/loss/dense_1_loss/sub_grad/Reshape*
transpose_a(*
_output_shapes

:*
transpose_b( *
T0*!
_class
loc:@dense_1/MatMul

Ytraining/RMSprop/gradients/gru_1/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3gru_1/TensorArraygru_1/while/Exit_1*
_output_shapes

:: *B
_class8
6loc:@gru_1/TensorArrayloc:@gru_1/TensorArrayReadV3*&
sourcetraining/RMSprop/gradients
Ж
Utraining/RMSprop/gradients/gru_1/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentitygru_1/while/Exit_1Z^training/RMSprop/gradients/gru_1/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*B
_class8
6loc:@gru_1/TensorArrayloc:@gru_1/TensorArrayReadV3
Д
[training/RMSprop/gradients/gru_1/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Ytraining/RMSprop/gradients/gru_1/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3gru_1/sub_15training/RMSprop/gradients/dense_1/MatMul_grad/MatMulUtraining/RMSprop/gradients/gru_1/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0**
_class 
loc:@gru_1/TensorArrayReadV3*
_output_shapes
: 
x
%training/RMSprop/gradients/zeros_like	ZerosLikegru_1/while/Exit_2*'
_output_shapes
:џџџџџџџџџ*
T0
л
9training/RMSprop/gradients/gru_1/while/Exit_1_grad/b_exitEnter[training/RMSprop/gradients/gru_1/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
parallel_iterations *
is_constant( *
_output_shapes
: *D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*%
_class
loc:@gru_1/while/Exit_1
Ж
9training/RMSprop/gradients/gru_1/while/Exit_2_grad/b_exitEnter%training/RMSprop/gradients/zeros_like*
T0*%
_class
loc:@gru_1/while/Exit_2*
parallel_iterations *
is_constant( *D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*'
_output_shapes
:џџџџџџџџџ

=training/RMSprop/gradients/gru_1/while/Switch_1_grad/b_switchMerge9training/RMSprop/gradients/gru_1/while/Exit_1_grad/b_exitDtraining/RMSprop/gradients/gru_1/while/Switch_1_grad_1/NextIteration*
T0*&
_class
loc:@gru_1/while/Merge_1*
N*
_output_shapes
: : 
Ќ
=training/RMSprop/gradients/gru_1/while/Switch_2_grad/b_switchMerge9training/RMSprop/gradients/gru_1/while/Exit_2_grad/b_exitDtraining/RMSprop/gradients/gru_1/while/Switch_2_grad_1/NextIteration*
T0*&
_class
loc:@gru_1/while/Merge_2*
N*)
_output_shapes
:џџџџџџџџџ: 
є
:training/RMSprop/gradients/gru_1/while/Merge_1_grad/SwitchSwitch=training/RMSprop/gradients/gru_1/while/Switch_1_grad/b_switch$training/RMSprop/gradients/b_count_2*
T0*&
_class
loc:@gru_1/while/Merge_1*
_output_shapes
: : 

:training/RMSprop/gradients/gru_1/while/Merge_2_grad/SwitchSwitch=training/RMSprop/gradients/gru_1/while/Switch_2_grad/b_switch$training/RMSprop/gradients/b_count_2*
T0*&
_class
loc:@gru_1/while/Merge_2*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
Х
8training/RMSprop/gradients/gru_1/while/Enter_1_grad/ExitExit:training/RMSprop/gradients/gru_1/while/Merge_1_grad/Switch*&
_class
loc:@gru_1/while/Enter_1*
_output_shapes
: *
T0
ж
8training/RMSprop/gradients/gru_1/while/Enter_2_grad/ExitExit:training/RMSprop/gradients/gru_1/while/Merge_2_grad/Switch*'
_output_shapes
:џџџџџџџџџ*
T0*&
_class
loc:@gru_1/while/Enter_2
Љ
qtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3wtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter<training/RMSprop/gradients/gru_1/while/Merge_1_grad/Switch:1*$
_class
loc:@gru_1/while/add_5*&
sourcetraining/RMSprop/gradients*
_output_shapes

:: 
в
wtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEntergru_1/TensorArray*
T0*$
_class
loc:@gru_1/while/add_5*
parallel_iterations *
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context
ђ
mtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity<training/RMSprop/gradients/gru_1/while/Merge_1_grad/Switch:1r^training/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*$
_class
loc:@gru_1/while/add_5*
_output_shapes
: 
Ђ
atraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3qtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3ltraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2mtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*$
_class
loc:@gru_1/while/add_5*
dtype0*'
_output_shapes
:џџџџџџџџџ
ѓ
gtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*?
_class5
3loc:@gru_1/while/Identityloc:@gru_1/while/add_5*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
л
gtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2gtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*

stack_name *
_output_shapes
:*
	elem_type0*?
_class5
3loc:@gru_1/while/Identityloc:@gru_1/while/add_5
§
gtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEntergtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*$
_class
loc:@gru_1/while/add_5*
parallel_iterations *
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0
і
mtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2gtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Entergru_1/while/Identity^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/add_5*
swap_memory(*
_output_shapes
: 
о
ltraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2rtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/add_5*
_output_shapes
: *
	elem_type0
Ѓ
rtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEntergtraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/add_5*
parallel_iterations *
is_constant(
ц#
htraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerm^training/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2S^training/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPopV2U^training/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPopV2_1S^training/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPopV2U^training/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPopV2_1A^training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/StackPopV2C^training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/StackPopV2T^training/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPopV2V^training/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPopV2_1B^training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/StackPopV2D^training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/StackPopV2Q^training/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/StackPopV2R^training/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/StackPopV2[^training/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/StackPopV2S^training/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPopV2U^training/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPopV2_1W^training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/StackPopV2c^training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2G^training/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/StackPopV2I^training/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/StackPopV2S^training/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/StackPopV2G^training/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/StackPopV2I^training/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/StackPopV2S^training/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPopV2U^training/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPopV2_1A^training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/StackPopV2C^training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/StackPopV2S^training/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/StackPopV2A^training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/StackPopV2T^training/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/StackPopV2]^training/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2S^training/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPopV2U^training/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPopV2_1Q^training/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPopV2S^training/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPopV2_1Y^training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2e^training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2G^training/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/StackPopV2I^training/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/StackPopV2S^training/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/StackPopV2E^training/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/StackPopV2G^training/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/StackPopV2S^training/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPopV2U^training/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPopV2_1S^training/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/StackPopV2A^training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/StackPopV2S^training/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPopV2U^training/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1G^training/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/StackPopV2I^training/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/StackPopV2G^training/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/StackPopV2I^training/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/StackPopV2S^training/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPopV2U^training/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*$
_class
loc:@gru_1/while/add_5
Ћ
training/RMSprop/gradients/AddNAddN<training/RMSprop/gradients/gru_1/while/Merge_2_grad/Switch:1atraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*&
_class
loc:@gru_1/while/Merge_2*
N*'
_output_shapes
:џџџџџџџџџ*
T0
Ў
7training/RMSprop/gradients/gru_1/while/add_5_grad/ShapeShapegru_1/while/mul_9*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/add_5*
out_type0
Б
9training/RMSprop/gradients/gru_1/while/add_5_grad/Shape_1Shapegru_1/while/mul_10*
T0*$
_class
loc:@gru_1/while/add_5*
out_type0*
_output_shapes
:
э
Gtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsRtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPopV2Ttraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPopV2_1*$
_class
loc:@gru_1/while/add_5*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
О
Mtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/ConstConst*$
_class
loc:@gru_1/while/add_5*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Mtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/f_accStackV2Mtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/Const*$
_class
loc:@gru_1/while/add_5*

stack_name *
_output_shapes
:*
	elem_type0
Щ
Mtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/EnterEnterMtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/f_acc*$
_class
loc:@gru_1/while/add_5*
parallel_iterations *
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0
щ
Straining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPushV2StackPushV2Mtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/Enter7training/RMSprop/gradients/gru_1/while/add_5_grad/Shape^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/add_5*
swap_memory(*
_output_shapes
:
Ў
Rtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Xtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*
_output_shapes
:*
	elem_type0*$
_class
loc:@gru_1/while/add_5
я
Xtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPopV2/EnterEnterMtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/f_acc*
T0*$
_class
loc:@gru_1/while/add_5*
parallel_iterations *
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context
Р
Otraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/Const_1Const*$
_class
loc:@gru_1/while/add_5*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Otraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/f_acc_1StackV2Otraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/Const_1*$
_class
loc:@gru_1/while/add_5*

stack_name *
_output_shapes
:*
	elem_type0
Э
Otraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/Enter_1EnterOtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/f_acc_1*
T0*$
_class
loc:@gru_1/while/add_5*
parallel_iterations *
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:
я
Utraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Otraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/Enter_19training/RMSprop/gradients/gru_1/while/add_5_grad/Shape_1^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/add_5*
swap_memory(*
_output_shapes
:
В
Ttraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Ztraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training/RMSprop/gradients/Sub*
_output_shapes
:*
	elem_type0*$
_class
loc:@gru_1/while/add_5
ѓ
Ztraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterOtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/add_5*
parallel_iterations 

5training/RMSprop/gradients/gru_1/while/add_5_grad/SumSumtraining/RMSprop/gradients/AddNGtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs*$
_class
loc:@gru_1/while/add_5*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Е
9training/RMSprop/gradients/gru_1/while/add_5_grad/ReshapeReshape5training/RMSprop/gradients/gru_1/while/add_5_grad/SumRtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ*
T0*$
_class
loc:@gru_1/while/add_5*
Tshape0

7training/RMSprop/gradients/gru_1/while/add_5_grad/Sum_1Sumtraining/RMSprop/gradients/AddNItraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*$
_class
loc:@gru_1/while/add_5*
_output_shapes
:
Л
;training/RMSprop/gradients/gru_1/while/add_5_grad/Reshape_1Reshape7training/RMSprop/gradients/gru_1/while/add_5_grad/Sum_1Ttraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPopV2_1*$
_class
loc:@gru_1/while/add_5*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
Ж
7training/RMSprop/gradients/gru_1/while/mul_9_grad/ShapeShapegru_1/while/clip_by_value*
T0*$
_class
loc:@gru_1/while/mul_9*
out_type0*
_output_shapes
:
Е
9training/RMSprop/gradients/gru_1/while/mul_9_grad/Shape_1Shapegru_1/while/Identity_2*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/mul_9*
out_type0
э
Gtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgsBroadcastGradientArgsRtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPopV2Ttraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPopV2_1*
T0*$
_class
loc:@gru_1/while/mul_9*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
Mtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/ConstConst*$
_class
loc:@gru_1/while/mul_9*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Mtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/f_accStackV2Mtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/Const*
	elem_type0*$
_class
loc:@gru_1/while/mul_9*

stack_name *
_output_shapes
:
Щ
Mtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/EnterEnterMtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_9*
parallel_iterations 
щ
Straining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPushV2StackPushV2Mtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/Enter7training/RMSprop/gradients/gru_1/while/mul_9_grad/Shape^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/mul_9*
swap_memory(*
_output_shapes
:
Ў
Rtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Xtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*
_output_shapes
:*
	elem_type0*$
_class
loc:@gru_1/while/mul_9
я
Xtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPopV2/EnterEnterMtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_9*
parallel_iterations 
Р
Otraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/Const_1Const*$
_class
loc:@gru_1/while/mul_9*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Otraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/f_acc_1StackV2Otraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/Const_1*$
_class
loc:@gru_1/while/mul_9*

stack_name *
_output_shapes
:*
	elem_type0
Э
Otraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/Enter_1EnterOtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/f_acc_1*
T0*$
_class
loc:@gru_1/while/mul_9*
parallel_iterations *
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context
я
Utraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Otraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/Enter_19training/RMSprop/gradients/gru_1/while/mul_9_grad/Shape_1^training/RMSprop/gradients/Add*
swap_memory(*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/mul_9
В
Ttraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Ztraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_9*
_output_shapes
:*
	elem_type0
ѓ
Ztraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterOtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_9*
parallel_iterations 

5training/RMSprop/gradients/gru_1/while/mul_9_grad/MulMul9training/RMSprop/gradients/gru_1/while/add_5_grad/Reshape@training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/StackPopV2*
T0*$
_class
loc:@gru_1/while/mul_9*'
_output_shapes
:џџџџџџџџџ
Щ
;training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/ConstConst*A
_class7
5loc:@gru_1/while/Identity_2loc:@gru_1/while/mul_9*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

;training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/f_accStackV2;training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/Const*A
_class7
5loc:@gru_1/while/Identity_2loc:@gru_1/while/mul_9*

stack_name *
_output_shapes
:*
	elem_type0
Ѕ
;training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/EnterEnter;training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/f_acc*
T0*$
_class
loc:@gru_1/while/mul_9*
parallel_iterations *
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context
Б
Atraining/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/StackPushV2StackPushV2;training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/Entergru_1/while/Identity_2^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/mul_9*
swap_memory(*'
_output_shapes
:џџџџџџџџџ

@training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/StackPopV2
StackPopV2Ftraining/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/StackPopV2/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_9*'
_output_shapes
:џџџџџџџџџ*
	elem_type0
Ы
Ftraining/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/StackPopV2/EnterEnter;training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/f_acc*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_9*
parallel_iterations *
is_constant(
Ђ
5training/RMSprop/gradients/gru_1/while/mul_9_grad/SumSum5training/RMSprop/gradients/gru_1/while/mul_9_grad/MulGtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*$
_class
loc:@gru_1/while/mul_9
Е
9training/RMSprop/gradients/gru_1/while/mul_9_grad/ReshapeReshape5training/RMSprop/gradients/gru_1/while/mul_9_grad/SumRtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPopV2*
T0*$
_class
loc:@gru_1/while/mul_9*
Tshape0*'
_output_shapes
:џџџџџџџџџ

7training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1MulBtraining/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/StackPopV29training/RMSprop/gradients/gru_1/while/add_5_grad/Reshape*
T0*$
_class
loc:@gru_1/while/mul_9*'
_output_shapes
:џџџџџџџџџ
Ю
=training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/ConstConst*D
_class:
8loc:@gru_1/while/clip_by_valueloc:@gru_1/while/mul_9*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

=training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/f_accStackV2=training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/Const*D
_class:
8loc:@gru_1/while/clip_by_valueloc:@gru_1/while/mul_9*

stack_name *
_output_shapes
:*
	elem_type0
Љ
=training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/EnterEnter=training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/f_acc*
T0*$
_class
loc:@gru_1/while/mul_9*
parallel_iterations *
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context
И
Ctraining/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/StackPushV2StackPushV2=training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/Entergru_1/while/clip_by_value^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/mul_9*
swap_memory(*'
_output_shapes
:џџџџџџџџџ

Btraining/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/StackPopV2
StackPopV2Htraining/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/StackPopV2/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_9*'
_output_shapes
:џџџџџџџџџ*
	elem_type0
Я
Htraining/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/StackPopV2/EnterEnter=training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/f_acc*
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/mul_9*
parallel_iterations 
Ј
7training/RMSprop/gradients/gru_1/while/mul_9_grad/Sum_1Sum7training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1Itraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs:1*
T0*$
_class
loc:@gru_1/while/mul_9*
_output_shapes
:*
	keep_dims( *

Tidx0
Л
;training/RMSprop/gradients/gru_1/while/mul_9_grad/Reshape_1Reshape7training/RMSprop/gradients/gru_1/while/mul_9_grad/Sum_1Ttraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPopV2_1*
T0*$
_class
loc:@gru_1/while/mul_9*
Tshape0*'
_output_shapes
:џџџџџџџџџ
Ў
8training/RMSprop/gradients/gru_1/while/mul_10_grad/ShapeShapegru_1/while/sub*
_output_shapes
:*
T0*%
_class
loc:@gru_1/while/mul_10*
out_type0
Б
:training/RMSprop/gradients/gru_1/while/mul_10_grad/Shape_1Shapegru_1/while/Relu*
_output_shapes
:*
T0*%
_class
loc:@gru_1/while/mul_10*
out_type0
ё
Htraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgsBroadcastGradientArgsStraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPopV2Utraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPopV2_1*
T0*%
_class
loc:@gru_1/while/mul_10*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
Ntraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/ConstConst*
_output_shapes
: *%
_class
loc:@gru_1/while/mul_10*
valueB :
џџџџџџџџџ*
dtype0

Ntraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/f_accStackV2Ntraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*%
_class
loc:@gru_1/while/mul_10*

stack_name 
Ь
Ntraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/EnterEnterNtraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*%
_class
loc:@gru_1/while/mul_10*
parallel_iterations 
э
Ttraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPushV2StackPushV2Ntraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/Enter8training/RMSprop/gradients/gru_1/while/mul_10_grad/Shape^training/RMSprop/gradients/Add*
swap_memory(*
_output_shapes
:*
T0*%
_class
loc:@gru_1/while/mul_10
Б
Straining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Ytraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*%
_class
loc:@gru_1/while/mul_10*
_output_shapes
:*
	elem_type0
ђ
Ytraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPopV2/EnterEnterNtraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*%
_class
loc:@gru_1/while/mul_10*
parallel_iterations 
Т
Ptraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/Const_1Const*%
_class
loc:@gru_1/while/mul_10*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Ptraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/f_acc_1StackV2Ptraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/Const_1*%
_class
loc:@gru_1/while/mul_10*

stack_name *
_output_shapes
:*
	elem_type0
а
Ptraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/Enter_1EnterPtraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*%
_class
loc:@gru_1/while/mul_10*
parallel_iterations 
ѓ
Vtraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Ptraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/Enter_1:training/RMSprop/gradients/gru_1/while/mul_10_grad/Shape_1^training/RMSprop/gradients/Add*%
_class
loc:@gru_1/while/mul_10*
swap_memory(*
_output_shapes
:*
T0
Е
Utraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2[training/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training/RMSprop/gradients/Sub*
	elem_type0*%
_class
loc:@gru_1/while/mul_10*
_output_shapes
:
і
[training/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterPtraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*%
_class
loc:@gru_1/while/mul_10

6training/RMSprop/gradients/gru_1/while/mul_10_grad/MulMul;training/RMSprop/gradients/gru_1/while/add_5_grad/Reshape_1Atraining/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/StackPopV2*%
_class
loc:@gru_1/while/mul_10*'
_output_shapes
:џџџџџџџџџ*
T0
Х
<training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/ConstConst*
dtype0*
_output_shapes
: *<
_class2
0loc:@gru_1/while/Reluloc:@gru_1/while/mul_10*
valueB :
џџџџџџџџџ

<training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/f_accStackV2<training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/Const*<
_class2
0loc:@gru_1/while/Reluloc:@gru_1/while/mul_10*

stack_name *
_output_shapes
:*
	elem_type0
Ј
<training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/EnterEnter<training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/f_acc*
T0*%
_class
loc:@gru_1/while/mul_10*
parallel_iterations *
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context
Ў
Btraining/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/StackPushV2StackPushV2<training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/Entergru_1/while/Relu^training/RMSprop/gradients/Add*
T0*%
_class
loc:@gru_1/while/mul_10*
swap_memory(*'
_output_shapes
:џџџџџџџџџ

Atraining/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/StackPopV2
StackPopV2Gtraining/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/StackPopV2/Enter^training/RMSprop/gradients/Sub*%
_class
loc:@gru_1/while/mul_10*'
_output_shapes
:џџџџџџџџџ*
	elem_type0
Ю
Gtraining/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/StackPopV2/EnterEnter<training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/f_acc*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*%
_class
loc:@gru_1/while/mul_10*
parallel_iterations *
is_constant(
І
6training/RMSprop/gradients/gru_1/while/mul_10_grad/SumSum6training/RMSprop/gradients/gru_1/while/mul_10_grad/MulHtraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@gru_1/while/mul_10*
_output_shapes
:
Й
:training/RMSprop/gradients/gru_1/while/mul_10_grad/ReshapeReshape6training/RMSprop/gradients/gru_1/while/mul_10_grad/SumStraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPopV2*
T0*%
_class
loc:@gru_1/while/mul_10*
Tshape0*'
_output_shapes
:џџџџџџџџџ

8training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1MulCtraining/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/StackPopV2;training/RMSprop/gradients/gru_1/while/add_5_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ*
T0*%
_class
loc:@gru_1/while/mul_10
Ц
>training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/ConstConst*;
_class1
/loc:@gru_1/while/mul_10loc:@gru_1/while/sub*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

>training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/f_accStackV2>training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/Const*;
_class1
/loc:@gru_1/while/mul_10loc:@gru_1/while/sub*

stack_name *
_output_shapes
:*
	elem_type0
Ќ
>training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/EnterEnter>training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/f_acc*
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:*
T0*%
_class
loc:@gru_1/while/mul_10*
parallel_iterations 
Б
Dtraining/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/StackPushV2StackPushV2>training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/Entergru_1/while/sub^training/RMSprop/gradients/Add*
swap_memory(*'
_output_shapes
:џџџџџџџџџ*
T0*%
_class
loc:@gru_1/while/mul_10

Ctraining/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/StackPopV2
StackPopV2Itraining/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/StackPopV2/Enter^training/RMSprop/gradients/Sub*%
_class
loc:@gru_1/while/mul_10*'
_output_shapes
:џџџџџџџџџ*
	elem_type0
в
Itraining/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/StackPopV2/EnterEnter>training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/f_acc*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*%
_class
loc:@gru_1/while/mul_10*
parallel_iterations 
Ќ
8training/RMSprop/gradients/gru_1/while/mul_10_grad/Sum_1Sum8training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1Jtraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@gru_1/while/mul_10
П
<training/RMSprop/gradients/gru_1/while/mul_10_grad/Reshape_1Reshape8training/RMSprop/gradients/gru_1/while/mul_10_grad/Sum_1Utraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPopV2_1*
T0*%
_class
loc:@gru_1/while/mul_10*
Tshape0*'
_output_shapes
:џџџџџџџџџ
м
Dtraining/RMSprop/gradients/gru_1/while/Switch_1_grad_1/NextIterationNextIteration<training/RMSprop/gradients/gru_1/while/Merge_1_grad/Switch:1*
T0*&
_class
loc:@gru_1/while/Merge_1*
_output_shapes
: 
Н
5training/RMSprop/gradients/gru_1/while/sub_grad/ShapeConst^training/RMSprop/gradients/Sub*"
_class
loc:@gru_1/while/sub*
valueB *
dtype0*
_output_shapes
: 
Д
7training/RMSprop/gradients/gru_1/while/sub_grad/Shape_1Shapegru_1/while/clip_by_value*
_output_shapes
:*
T0*"
_class
loc:@gru_1/while/sub*
out_type0
Ш
Etraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgsBroadcastGradientArgs5training/RMSprop/gradients/gru_1/while/sub_grad/ShapePtraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/StackPopV2*
T0*"
_class
loc:@gru_1/while/sub*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
К
Ktraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/ConstConst*"
_class
loc:@gru_1/while/sub*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Ktraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/f_accStackV2Ktraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/Const*"
_class
loc:@gru_1/while/sub*

stack_name *
_output_shapes
:*
	elem_type0
У
Ktraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/EnterEnterKtraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*"
_class
loc:@gru_1/while/sub*
parallel_iterations 
у
Qtraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/StackPushV2StackPushV2Ktraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/Enter7training/RMSprop/gradients/gru_1/while/sub_grad/Shape_1^training/RMSprop/gradients/Add*
T0*"
_class
loc:@gru_1/while/sub*
swap_memory(*
_output_shapes
:
Ј
Ptraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Vtraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*"
_class
loc:@gru_1/while/sub*
_output_shapes
:*
	elem_type0
щ
Vtraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/StackPopV2/EnterEnterKtraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/f_acc*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*"
_class
loc:@gru_1/while/sub*
parallel_iterations *
is_constant(
Ё
3training/RMSprop/gradients/gru_1/while/sub_grad/SumSum:training/RMSprop/gradients/gru_1/while/mul_10_grad/ReshapeEtraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs*"
_class
loc:@gru_1/while/sub*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

7training/RMSprop/gradients/gru_1/while/sub_grad/ReshapeReshape3training/RMSprop/gradients/gru_1/while/sub_grad/Sum5training/RMSprop/gradients/gru_1/while/sub_grad/Shape*
T0*"
_class
loc:@gru_1/while/sub*
Tshape0*
_output_shapes
: 
Ѕ
5training/RMSprop/gradients/gru_1/while/sub_grad/Sum_1Sum:training/RMSprop/gradients/gru_1/while/mul_10_grad/ReshapeGtraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*"
_class
loc:@gru_1/while/sub
И
3training/RMSprop/gradients/gru_1/while/sub_grad/NegNeg5training/RMSprop/gradients/gru_1/while/sub_grad/Sum_1*"
_class
loc:@gru_1/while/sub*
_output_shapes
:*
T0
Џ
9training/RMSprop/gradients/gru_1/while/sub_grad/Reshape_1Reshape3training/RMSprop/gradients/gru_1/while/sub_grad/NegPtraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ*
T0*"
_class
loc:@gru_1/while/sub*
Tshape0

9training/RMSprop/gradients/gru_1/while/Relu_grad/ReluGradReluGrad<training/RMSprop/gradients/gru_1/while/mul_10_grad/Reshape_1Atraining/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/StackPopV2*
T0*#
_class
loc:@gru_1/while/Relu*'
_output_shapes
:џџџџџџџџџ

!training/RMSprop/gradients/AddN_1AddN9training/RMSprop/gradients/gru_1/while/mul_9_grad/Reshape9training/RMSprop/gradients/gru_1/while/sub_grad/Reshape_1*$
_class
loc:@gru_1/while/mul_9*
N*'
_output_shapes
:џџџџџџџџџ*
T0
Ю
?training/RMSprop/gradients/gru_1/while/clip_by_value_grad/ShapeShape!gru_1/while/clip_by_value/Minimum*
T0*,
_class"
 loc:@gru_1/while/clip_by_value*
out_type0*
_output_shapes
:
г
Atraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/Shape_1Const^training/RMSprop/gradients/Sub*
_output_shapes
: *,
_class"
 loc:@gru_1/while/clip_by_value*
valueB *
dtype0
а
Atraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/Shape_2Shape!training/RMSprop/gradients/AddN_1*
T0*,
_class"
 loc:@gru_1/while/clip_by_value*
out_type0*
_output_shapes
:
й
Etraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/zeros/ConstConst^training/RMSprop/gradients/Sub*
_output_shapes
: *,
_class"
 loc:@gru_1/while/clip_by_value*
valueB
 *    *
dtype0
У
?training/RMSprop/gradients/gru_1/while/clip_by_value_grad/zerosFillAtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/Shape_2Etraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/zeros/Const*
T0*,
_class"
 loc:@gru_1/while/clip_by_value*

index_type0*'
_output_shapes
:џџџџџџџџџ
й
Ftraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqualGreaterEqualQtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/StackPopV2Ntraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/Const_1*'
_output_shapes
:џџџџџџџџџ*
T0*,
_class"
 loc:@gru_1/while/clip_by_value
э
Ltraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/ConstConst*T
_classJ
Hloc:@gru_1/while/clip_by_value&loc:@gru_1/while/clip_by_value/Minimum*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
К
Ltraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/f_accStackV2Ltraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/Const*T
_classJ
Hloc:@gru_1/while/clip_by_value&loc:@gru_1/while/clip_by_value/Minimum*

stack_name *
_output_shapes
:*
	elem_type0
Я
Ltraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/EnterEnterLtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/f_acc*
T0*,
_class"
 loc:@gru_1/while/clip_by_value*
parallel_iterations *
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context
ц
Rtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/StackPushV2StackPushV2Ltraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/Enter!gru_1/while/clip_by_value/Minimum^training/RMSprop/gradients/Add*
T0*,
_class"
 loc:@gru_1/while/clip_by_value*
swap_memory(*'
_output_shapes
:џџџџџџџџџ
С
Qtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/StackPopV2
StackPopV2Wtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/StackPopV2/Enter^training/RMSprop/gradients/Sub*,
_class"
 loc:@gru_1/while/clip_by_value*'
_output_shapes
:џџџџџџџџџ*
	elem_type0
ѕ
Wtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/StackPopV2/EnterEnterLtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/f_acc*
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*,
_class"
 loc:@gru_1/while/clip_by_value*
parallel_iterations 
т
Ntraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/Const_1Const^training/RMSprop/gradients/Sub*,
_class"
 loc:@gru_1/while/clip_by_value*
valueB
 *    *
dtype0*
_output_shapes
: 
ђ
Otraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsZtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/StackPopV2Atraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*,
_class"
 loc:@gru_1/while/clip_by_value
Ю
Utraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/ConstConst*,
_class"
 loc:@gru_1/while/clip_by_value*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Є
Utraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/f_accStackV2Utraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/Const*,
_class"
 loc:@gru_1/while/clip_by_value*

stack_name *
_output_shapes
:*
	elem_type0
с
Utraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/EnterEnterUtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/f_acc*
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:*
T0*,
_class"
 loc:@gru_1/while/clip_by_value*
parallel_iterations 

[training/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/StackPushV2StackPushV2Utraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/Enter?training/RMSprop/gradients/gru_1/while/clip_by_value_grad/Shape^training/RMSprop/gradients/Add*
swap_memory(*
_output_shapes
:*
T0*,
_class"
 loc:@gru_1/while/clip_by_value
Ц
Ztraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/StackPopV2
StackPopV2`training/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*,
_class"
 loc:@gru_1/while/clip_by_value*
_output_shapes
:*
	elem_type0

`training/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/StackPopV2/EnterEnterUtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/f_acc*
T0*,
_class"
 loc:@gru_1/while/clip_by_value*
parallel_iterations *
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:
ж
@training/RMSprop/gradients/gru_1/while/clip_by_value_grad/SelectSelectFtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual!training/RMSprop/gradients/AddN_1?training/RMSprop/gradients/gru_1/while/clip_by_value_grad/zeros*'
_output_shapes
:џџџџџџџџџ*
T0*,
_class"
 loc:@gru_1/while/clip_by_value
и
Btraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/Select_1SelectFtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual?training/RMSprop/gradients/gru_1/while/clip_by_value_grad/zeros!training/RMSprop/gradients/AddN_1*
T0*,
_class"
 loc:@gru_1/while/clip_by_value*'
_output_shapes
:џџџџџџџџџ
Х
=training/RMSprop/gradients/gru_1/while/clip_by_value_grad/SumSum@training/RMSprop/gradients/gru_1/while/clip_by_value_grad/SelectOtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*,
_class"
 loc:@gru_1/while/clip_by_value*
_output_shapes
:
е
Atraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/ReshapeReshape=training/RMSprop/gradients/gru_1/while/clip_by_value_grad/SumZtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/StackPopV2*
T0*,
_class"
 loc:@gru_1/while/clip_by_value*
Tshape0*'
_output_shapes
:џџџџџџџџџ
Ы
?training/RMSprop/gradients/gru_1/while/clip_by_value_grad/Sum_1SumBtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/Select_1Qtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*,
_class"
 loc:@gru_1/while/clip_by_value*
_output_shapes
:
Џ
Ctraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/Reshape_1Reshape?training/RMSprop/gradients/gru_1/while/clip_by_value_grad/Sum_1Atraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/Shape_1*
T0*,
_class"
 loc:@gru_1/while/clip_by_value*
Tshape0*
_output_shapes
: 
В
7training/RMSprop/gradients/gru_1/while/add_4_grad/ShapeShapegru_1/while/BiasAdd_2*$
_class
loc:@gru_1/while/add_4*
out_type0*
_output_shapes
:*
T0
Г
9training/RMSprop/gradients/gru_1/while/add_4_grad/Shape_1Shapegru_1/while/MatMul_5*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/add_4*
out_type0
э
Gtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsRtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPopV2Ttraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*$
_class
loc:@gru_1/while/add_4
О
Mtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/ConstConst*$
_class
loc:@gru_1/while/add_4*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Mtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/f_accStackV2Mtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/Const*$
_class
loc:@gru_1/while/add_4*

stack_name *
_output_shapes
:*
	elem_type0
Щ
Mtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/EnterEnterMtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/add_4*
parallel_iterations 
щ
Straining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPushV2StackPushV2Mtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/Enter7training/RMSprop/gradients/gru_1/while/add_4_grad/Shape^training/RMSprop/gradients/Add*
swap_memory(*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/add_4
Ў
Rtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Xtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/add_4*
_output_shapes
:*
	elem_type0
я
Xtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPopV2/EnterEnterMtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/f_acc*
T0*$
_class
loc:@gru_1/while/add_4*
parallel_iterations *
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:
Р
Otraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/Const_1Const*$
_class
loc:@gru_1/while/add_4*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Otraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/f_acc_1StackV2Otraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/Const_1*
	elem_type0*$
_class
loc:@gru_1/while/add_4*

stack_name *
_output_shapes
:
Э
Otraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/Enter_1EnterOtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/add_4*
parallel_iterations 
я
Utraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Otraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/Enter_19training/RMSprop/gradients/gru_1/while/add_4_grad/Shape_1^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/add_4*
swap_memory(*
_output_shapes
:
В
Ttraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Ztraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training/RMSprop/gradients/Sub*
	elem_type0*$
_class
loc:@gru_1/while/add_4*
_output_shapes
:
ѓ
Ztraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterOtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/add_4*
parallel_iterations 
І
5training/RMSprop/gradients/gru_1/while/add_4_grad/SumSum9training/RMSprop/gradients/gru_1/while/Relu_grad/ReluGradGtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*$
_class
loc:@gru_1/while/add_4*
_output_shapes
:
Е
9training/RMSprop/gradients/gru_1/while/add_4_grad/ReshapeReshape5training/RMSprop/gradients/gru_1/while/add_4_grad/SumRtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPopV2*
T0*$
_class
loc:@gru_1/while/add_4*
Tshape0*'
_output_shapes
:џџџџџџџџџ
Њ
7training/RMSprop/gradients/gru_1/while/add_4_grad/Sum_1Sum9training/RMSprop/gradients/gru_1/while/Relu_grad/ReluGradItraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*$
_class
loc:@gru_1/while/add_4
Л
;training/RMSprop/gradients/gru_1/while/add_4_grad/Reshape_1Reshape7training/RMSprop/gradients/gru_1/while/add_4_grad/Sum_1Ttraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPopV2_1*
T0*$
_class
loc:@gru_1/while/add_4*
Tshape0*'
_output_shapes
:џџџџџџџџџ
Ю
Gtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/ShapeShapegru_1/while/add_1*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
out_type0*
_output_shapes
:
у
Itraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/Shape_1Const^training/RMSprop/gradients/Sub*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
valueB *
dtype0*
_output_shapes
: 

Itraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/Shape_2ShapeAtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/Reshape*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
out_type0*
_output_shapes
:
щ
Mtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/zeros/ConstConst^training/RMSprop/gradients/Sub*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
valueB
 *    *
dtype0*
_output_shapes
: 
у
Gtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/zerosFillItraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/Shape_2Mtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:џџџџџџџџџ*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*

index_type0
э
Ktraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual	LessEqualVtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/StackPopV2Straining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/Const_1*'
_output_shapes
:џџџџџџџџџ*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum
ъ
Qtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/ConstConst*L
_classB
@loc:@gru_1/while/add_1&loc:@gru_1/while/clip_by_value/Minimum*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
М
Qtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/f_accStackV2Qtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/Const*
	elem_type0*L
_classB
@loc:@gru_1/while/add_1&loc:@gru_1/while/clip_by_value/Minimum*

stack_name *
_output_shapes
:
с
Qtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/EnterEnterQtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/f_acc*
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
parallel_iterations 
ш
Wtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/StackPushV2StackPushV2Qtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/Entergru_1/while/add_1^training/RMSprop/gradients/Add*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
swap_memory(*'
_output_shapes
:џџџџџџџџџ*
T0
г
Vtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/StackPopV2
StackPopV2\training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/StackPopV2/Enter^training/RMSprop/gradients/Sub*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*'
_output_shapes
:џџџџџџџџџ*
	elem_type0

\training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/StackPopV2/EnterEnterQtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/f_acc*
parallel_iterations *
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum
я
Straining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/Const_1Const^training/RMSprop/gradients/Sub*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Wtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsbtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2Itraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/Shape_1*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
о
]training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/ConstConst*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
М
]training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/f_accStackV2]training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/Const*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*

stack_name *
_output_shapes
:*
	elem_type0
љ
]training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/EnterEnter]training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
parallel_iterations *
is_constant(
Љ
ctraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPushV2StackPushV2]training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/EnterGtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/Shape^training/RMSprop/gradients/Add*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
swap_memory(*
_output_shapes
:
о
btraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2
StackPopV2htraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*
_output_shapes
:*
	elem_type0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum

htraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2/EnterEnter]training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/f_acc*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
parallel_iterations *
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:

Htraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/SelectSelectKtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqualAtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/ReshapeGtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/zeros*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*'
_output_shapes
:џџџџџџџџџ

Jtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/Select_1SelectKtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqualGtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/zerosAtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/Reshape*'
_output_shapes
:џџџџџџџџџ*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum
х
Etraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/SumSumHtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/SelectWtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
_output_shapes
:*
	keep_dims( *

Tidx0
ѕ
Itraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/ReshapeReshapeEtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/Sumbtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPopV2*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
ы
Gtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/Sum_1SumJtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/Select_1Ytraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
_output_shapes
:*
	keep_dims( *

Tidx0
Я
Ktraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/Reshape_1ReshapeGtraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/Sum_1Itraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/Shape_1*
T0*4
_class*
(&loc:@gru_1/while/clip_by_value/Minimum*
Tshape0*
_output_shapes
: 
ё
Atraining/RMSprop/gradients/gru_1/while/BiasAdd_2_grad/BiasAddGradBiasAddGrad9training/RMSprop/gradients/gru_1/while/add_4_grad/Reshape*
T0*(
_class
loc:@gru_1/while/BiasAdd_2*
data_formatNHWC*
_output_shapes
:
Ы
;training/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMulMatMul;training/RMSprop/gradients/gru_1/while/add_4_grad/Reshape_1Ftraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/StackPopV2*
T0*'
_class
loc:@gru_1/while/MatMul_5*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b(
з
Atraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/ConstConst*I
_class?
=loc:@gru_1/while/MatMul_5 loc:@gru_1/while/strided_slice_8*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Atraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/f_accStackV2Atraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/Const*

stack_name *
_output_shapes
:*
	elem_type0*I
_class?
=loc:@gru_1/while/MatMul_5 loc:@gru_1/while/strided_slice_8
Д
Atraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/EnterEnterAtraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/f_acc*
T0*'
_class
loc:@gru_1/while/MatMul_5*
parallel_iterations *
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context
М
Gtraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/StackPushV2StackPushV2Atraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/Entergru_1/while/strided_slice_8^training/RMSprop/gradients/Add*
T0*'
_class
loc:@gru_1/while/MatMul_5*
swap_memory(*
_output_shapes

:

Ftraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/StackPopV2
StackPopV2Ltraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/StackPopV2/Enter^training/RMSprop/gradients/Sub*
_output_shapes

:*
	elem_type0*'
_class
loc:@gru_1/while/MatMul_5
к
Ltraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/StackPopV2/EnterEnterAtraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/f_acc*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*'
_class
loc:@gru_1/while/MatMul_5*
parallel_iterations 
Ц
=training/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1MatMulHtraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/StackPopV2;training/RMSprop/gradients/gru_1/while/add_4_grad/Reshape_1*
transpose_a(*
_output_shapes

:*
transpose_b( *
T0*'
_class
loc:@gru_1/while/MatMul_5
Я
Ctraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/ConstConst*?
_class5
3loc:@gru_1/while/MatMul_5loc:@gru_1/while/mul_8*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Ctraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/f_accStackV2Ctraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/Const*?
_class5
3loc:@gru_1/while/MatMul_5loc:@gru_1/while/mul_8*

stack_name *
_output_shapes
:*
	elem_type0
И
Ctraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/EnterEnterCtraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/f_acc*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*'
_class
loc:@gru_1/while/MatMul_5*
parallel_iterations *
is_constant(
П
Itraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/StackPushV2StackPushV2Ctraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/Entergru_1/while/mul_8^training/RMSprop/gradients/Add*
T0*'
_class
loc:@gru_1/while/MatMul_5*
swap_memory(*'
_output_shapes
:џџџџџџџџџ
Њ
Htraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/StackPopV2
StackPopV2Ntraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/StackPopV2/Enter^training/RMSprop/gradients/Sub*'
_class
loc:@gru_1/while/MatMul_5*'
_output_shapes
:џџџџџџџџџ*
	elem_type0
о
Ntraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/StackPopV2/EnterEnterCtraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/f_acc*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*'
_class
loc:@gru_1/while/MatMul_5*
parallel_iterations 
Ў
7training/RMSprop/gradients/gru_1/while/add_1_grad/ShapeShapegru_1/while/mul_6*$
_class
loc:@gru_1/while/add_1*
out_type0*
_output_shapes
:*
T0
У
9training/RMSprop/gradients/gru_1/while/add_1_grad/Shape_1Const^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/add_1*
valueB *
dtype0*
_output_shapes
: 
в
Gtraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsRtraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/StackPopV29training/RMSprop/gradients/gru_1/while/add_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*$
_class
loc:@gru_1/while/add_1
О
Mtraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/ConstConst*$
_class
loc:@gru_1/while/add_1*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Mtraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/f_accStackV2Mtraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/Const*
	elem_type0*$
_class
loc:@gru_1/while/add_1*

stack_name *
_output_shapes
:
Щ
Mtraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/EnterEnterMtraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/add_1*
parallel_iterations *
is_constant(
щ
Straining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2Mtraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/Enter7training/RMSprop/gradients/gru_1/while/add_1_grad/Shape^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/add_1*
swap_memory(*
_output_shapes
:
Ў
Rtraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Xtraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/add_1*
_output_shapes
:*
	elem_type0
я
Xtraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterMtraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/add_1*
parallel_iterations 
Ж
5training/RMSprop/gradients/gru_1/while/add_1_grad/SumSumItraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/ReshapeGtraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs*
T0*$
_class
loc:@gru_1/while/add_1*
_output_shapes
:*
	keep_dims( *

Tidx0
Е
9training/RMSprop/gradients/gru_1/while/add_1_grad/ReshapeReshape5training/RMSprop/gradients/gru_1/while/add_1_grad/SumRtraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*$
_class
loc:@gru_1/while/add_1*
Tshape0*'
_output_shapes
:џџџџџџџџџ
К
7training/RMSprop/gradients/gru_1/while/add_1_grad/Sum_1SumItraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/ReshapeItraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*$
_class
loc:@gru_1/while/add_1

;training/RMSprop/gradients/gru_1/while/add_1_grad/Reshape_1Reshape7training/RMSprop/gradients/gru_1/while/add_1_grad/Sum_19training/RMSprop/gradients/gru_1/while/add_1_grad/Shape_1*
_output_shapes
: *
T0*$
_class
loc:@gru_1/while/add_1*
Tshape0
Щ
;training/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMulMatMul9training/RMSprop/gradients/gru_1/while/add_4_grad/ReshapeFtraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/StackPopV2*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b(*
T0*'
_class
loc:@gru_1/while/MatMul_2
з
Atraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/ConstConst*I
_class?
=loc:@gru_1/while/MatMul_2 loc:@gru_1/while/strided_slice_2*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Atraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/f_accStackV2Atraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/Const*I
_class?
=loc:@gru_1/while/MatMul_2 loc:@gru_1/while/strided_slice_2*

stack_name *
_output_shapes
:*
	elem_type0
Д
Atraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/EnterEnterAtraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/f_acc*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*'
_class
loc:@gru_1/while/MatMul_2*
parallel_iterations 
М
Gtraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/StackPushV2StackPushV2Atraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/Entergru_1/while/strided_slice_2^training/RMSprop/gradients/Add*
T0*'
_class
loc:@gru_1/while/MatMul_2*
swap_memory(*
_output_shapes

:

Ftraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/StackPopV2
StackPopV2Ltraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/StackPopV2/Enter^training/RMSprop/gradients/Sub*'
_class
loc:@gru_1/while/MatMul_2*
_output_shapes

:*
	elem_type0
к
Ltraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/StackPopV2/EnterEnterAtraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/f_acc*
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*'
_class
loc:@gru_1/while/MatMul_2*
parallel_iterations 
Ф
=training/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1MatMulHtraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/StackPopV29training/RMSprop/gradients/gru_1/while/add_4_grad/Reshape*
T0*'
_class
loc:@gru_1/while/MatMul_2*
transpose_a(*
_output_shapes

:*
transpose_b( 
Я
Ctraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/ConstConst*?
_class5
3loc:@gru_1/while/MatMul_2loc:@gru_1/while/mul_2*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Ctraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/f_accStackV2Ctraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/Const*
	elem_type0*?
_class5
3loc:@gru_1/while/MatMul_2loc:@gru_1/while/mul_2*

stack_name *
_output_shapes
:
И
Ctraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/EnterEnterCtraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/f_acc*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*'
_class
loc:@gru_1/while/MatMul_2*
parallel_iterations *
is_constant(
П
Itraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/StackPushV2StackPushV2Ctraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/Entergru_1/while/mul_2^training/RMSprop/gradients/Add*'
_class
loc:@gru_1/while/MatMul_2*
swap_memory(*'
_output_shapes
:џџџџџџџџџ*
T0
Њ
Htraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/StackPopV2
StackPopV2Ntraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/StackPopV2/Enter^training/RMSprop/gradients/Sub*'
_class
loc:@gru_1/while/MatMul_2*'
_output_shapes
:џџџџџџџџџ*
	elem_type0
о
Ntraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/StackPopV2/EnterEnterCtraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/f_acc*
T0*'
_class
loc:@gru_1/while/MatMul_2*
parallel_iterations *
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context
м
Atraining/RMSprop/gradients/gru_1/while/strided_slice_5_grad/ShapeConst^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_5*
valueB:0*
dtype0*
_output_shapes
:
Ќ
Ltraining/RMSprop/gradients/gru_1/while/strided_slice_5_grad/StridedSliceGradStridedSliceGradAtraining/RMSprop/gradients/gru_1/while/strided_slice_5_grad/ShapeRtraining/RMSprop/gradients/gru_1/while/strided_slice_5_grad/StridedSliceGrad/ConstTtraining/RMSprop/gradients/gru_1/while/strided_slice_5_grad/StridedSliceGrad/Const_1Ttraining/RMSprop/gradients/gru_1/while/strided_slice_5_grad/StridedSliceGrad/Const_2Atraining/RMSprop/gradients/gru_1/while/BiasAdd_2_grad/BiasAddGrad*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:0*
Index0*
T0*.
_class$
" loc:@gru_1/while/strided_slice_5
э
Rtraining/RMSprop/gradients/gru_1/while/strided_slice_5_grad/StridedSliceGrad/ConstConst^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_5*
valueB: *
dtype0*
_output_shapes
:
я
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_5_grad/StridedSliceGrad/Const_1Const^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_5*
valueB: *
dtype0*
_output_shapes
:
я
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_5_grad/StridedSliceGrad/Const_2Const^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_5*
valueB:*
dtype0*
_output_shapes
:
И
7training/RMSprop/gradients/gru_1/while/mul_8_grad/ShapeShapegru_1/while/clip_by_value_1*
T0*$
_class
loc:@gru_1/while/mul_8*
out_type0*
_output_shapes
:
А
9training/RMSprop/gradients/gru_1/while/mul_8_grad/Shape_1Shapegru_1/while/mul_5*
T0*$
_class
loc:@gru_1/while/mul_8*
out_type0*
_output_shapes
:
э
Gtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgsBroadcastGradientArgsRtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPopV2Ttraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPopV2_1*
T0*$
_class
loc:@gru_1/while/mul_8*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
Mtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/ConstConst*$
_class
loc:@gru_1/while/mul_8*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Mtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/f_accStackV2Mtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*$
_class
loc:@gru_1/while/mul_8
Щ
Mtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/EnterEnterMtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_8*
parallel_iterations 
щ
Straining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPushV2StackPushV2Mtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/Enter7training/RMSprop/gradients/gru_1/while/mul_8_grad/Shape^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/mul_8*
swap_memory(*
_output_shapes
:
Ў
Rtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Xtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_8*
_output_shapes
:*
	elem_type0
я
Xtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPopV2/EnterEnterMtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_8*
parallel_iterations 
Р
Otraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/Const_1Const*$
_class
loc:@gru_1/while/mul_8*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Otraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/f_acc_1StackV2Otraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/Const_1*$
_class
loc:@gru_1/while/mul_8*

stack_name *
_output_shapes
:*
	elem_type0
Э
Otraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/Enter_1EnterOtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/f_acc_1*
T0*$
_class
loc:@gru_1/while/mul_8*
parallel_iterations *
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:
я
Utraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Otraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/Enter_19training/RMSprop/gradients/gru_1/while/mul_8_grad/Shape_1^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/mul_8*
swap_memory(*
_output_shapes
:
В
Ttraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Ztraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_8*
_output_shapes
:*
	elem_type0
ѓ
Ztraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterOtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/mul_8*
parallel_iterations 

5training/RMSprop/gradients/gru_1/while/mul_8_grad/MulMul;training/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul@training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/StackPopV2*
T0*$
_class
loc:@gru_1/while/mul_8*'
_output_shapes
:џџџџџџџџџ
Ф
;training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/ConstConst*<
_class2
0loc:@gru_1/while/mul_5loc:@gru_1/while/mul_8*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

;training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/f_accStackV2;training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/Const*
	elem_type0*<
_class2
0loc:@gru_1/while/mul_5loc:@gru_1/while/mul_8*

stack_name *
_output_shapes
:
Ѕ
;training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/EnterEnter;training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/f_acc*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_8*
parallel_iterations 
Ќ
Atraining/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/StackPushV2StackPushV2;training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/Entergru_1/while/mul_5^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/mul_8*
swap_memory(*'
_output_shapes
:џџџџџџџџџ

@training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/StackPopV2
StackPopV2Ftraining/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/StackPopV2/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_8*'
_output_shapes
:џџџџџџџџџ*
	elem_type0
Ы
Ftraining/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/StackPopV2/EnterEnter;training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/f_acc*
T0*$
_class
loc:@gru_1/while/mul_8*
parallel_iterations *
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:
Ђ
5training/RMSprop/gradients/gru_1/while/mul_8_grad/SumSum5training/RMSprop/gradients/gru_1/while/mul_8_grad/MulGtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*$
_class
loc:@gru_1/while/mul_8*
_output_shapes
:
Е
9training/RMSprop/gradients/gru_1/while/mul_8_grad/ReshapeReshape5training/RMSprop/gradients/gru_1/while/mul_8_grad/SumRtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ*
T0*$
_class
loc:@gru_1/while/mul_8*
Tshape0

7training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1MulBtraining/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/StackPopV2;training/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul*
T0*$
_class
loc:@gru_1/while/mul_8*'
_output_shapes
:џџџџџџџџџ
а
=training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/ConstConst*F
_class<
: loc:@gru_1/while/clip_by_value_1loc:@gru_1/while/mul_8*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

=training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/f_accStackV2=training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/Const*F
_class<
: loc:@gru_1/while/clip_by_value_1loc:@gru_1/while/mul_8*

stack_name *
_output_shapes
:*
	elem_type0
Љ
=training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/EnterEnter=training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/f_acc*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_8*
parallel_iterations 
К
Ctraining/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/StackPushV2StackPushV2=training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/Entergru_1/while/clip_by_value_1^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/mul_8*
swap_memory(*'
_output_shapes
:џџџџџџџџџ

Btraining/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/StackPopV2
StackPopV2Htraining/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/StackPopV2/Enter^training/RMSprop/gradients/Sub*
	elem_type0*$
_class
loc:@gru_1/while/mul_8*'
_output_shapes
:џџџџџџџџџ
Я
Htraining/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/StackPopV2/EnterEnter=training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/f_acc*
T0*$
_class
loc:@gru_1/while/mul_8*
parallel_iterations *
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:
Ј
7training/RMSprop/gradients/gru_1/while/mul_8_grad/Sum_1Sum7training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1Itraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*$
_class
loc:@gru_1/while/mul_8*
_output_shapes
:
Л
;training/RMSprop/gradients/gru_1/while/mul_8_grad/Reshape_1Reshape7training/RMSprop/gradients/gru_1/while/mul_8_grad/Sum_1Ttraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:џџџџџџџџџ*
T0*$
_class
loc:@gru_1/while/mul_8*
Tshape0
у
Atraining/RMSprop/gradients/gru_1/while/strided_slice_8_grad/ShapeConst^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_8*
valueB"   0   *
dtype0*
_output_shapes
:
Ќ
Ltraining/RMSprop/gradients/gru_1/while/strided_slice_8_grad/StridedSliceGradStridedSliceGradAtraining/RMSprop/gradients/gru_1/while/strided_slice_8_grad/ShapeRtraining/RMSprop/gradients/gru_1/while/strided_slice_8_grad/StridedSliceGrad/ConstTtraining/RMSprop/gradients/gru_1/while/strided_slice_8_grad/StridedSliceGrad/Const_1Ttraining/RMSprop/gradients/gru_1/while/strided_slice_8_grad/StridedSliceGrad/Const_2=training/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1*
new_axis_mask *
end_mask*
_output_shapes

:0*
Index0*
T0*.
_class$
" loc:@gru_1/while/strided_slice_8*
shrink_axis_mask *

begin_mask*
ellipsis_mask 
є
Rtraining/RMSprop/gradients/gru_1/while/strided_slice_8_grad/StridedSliceGrad/ConstConst^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_8*
valueB"        *
dtype0*
_output_shapes
:
і
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_8_grad/StridedSliceGrad/Const_1Const^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_8*
valueB"        *
dtype0*
_output_shapes
:
і
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_8_grad/StridedSliceGrad/Const_2Const^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_8*
valueB"      *
dtype0*
_output_shapes
:
С
7training/RMSprop/gradients/gru_1/while/mul_6_grad/ShapeConst^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_6*
valueB *
dtype0*
_output_shapes
: 
Ў
9training/RMSprop/gradients/gru_1/while/mul_6_grad/Shape_1Shapegru_1/while/add*$
_class
loc:@gru_1/while/mul_6*
out_type0*
_output_shapes
:*
T0
а
Gtraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgs7training/RMSprop/gradients/gru_1/while/mul_6_grad/ShapeRtraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/StackPopV2*$
_class
loc:@gru_1/while/mul_6*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
О
Mtraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/ConstConst*
_output_shapes
: *$
_class
loc:@gru_1/while/mul_6*
valueB :
џџџџџџџџџ*
dtype0

Mtraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/f_accStackV2Mtraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*$
_class
loc:@gru_1/while/mul_6*

stack_name 
Щ
Mtraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/EnterEnterMtraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/f_acc*
T0*$
_class
loc:@gru_1/while/mul_6*
parallel_iterations *
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:
ы
Straining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/StackPushV2StackPushV2Mtraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/Enter9training/RMSprop/gradients/gru_1/while/mul_6_grad/Shape_1^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/mul_6*
swap_memory(*
_output_shapes
:
Ў
Rtraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Xtraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_6*
_output_shapes
:*
	elem_type0
я
Xtraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/StackPopV2/EnterEnterMtraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/f_acc*
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/mul_6*
parallel_iterations 

5training/RMSprop/gradients/gru_1/while/mul_6_grad/MulMul9training/RMSprop/gradients/gru_1/while/add_1_grad/Reshape@training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/StackPopV2*'
_output_shapes
:џџџџџџџџџ*
T0*$
_class
loc:@gru_1/while/mul_6
Т
;training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/ConstConst*
dtype0*
_output_shapes
: *:
_class0
.loc:@gru_1/while/addloc:@gru_1/while/mul_6*
valueB :
џџџџџџџџџ
ў
;training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/f_accStackV2;training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/Const*:
_class0
.loc:@gru_1/while/addloc:@gru_1/while/mul_6*

stack_name *
_output_shapes
:*
	elem_type0
Ѕ
;training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/EnterEnter;training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/f_acc*
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/mul_6*
parallel_iterations 
Њ
Atraining/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/StackPushV2StackPushV2;training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/Entergru_1/while/add^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/mul_6*
swap_memory(*'
_output_shapes
:џџџџџџџџџ

@training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/StackPopV2
StackPopV2Ftraining/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/StackPopV2/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_6*'
_output_shapes
:џџџџџџџџџ*
	elem_type0
Ы
Ftraining/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/StackPopV2/EnterEnter;training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/f_acc*
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/mul_6*
parallel_iterations 
Ђ
5training/RMSprop/gradients/gru_1/while/mul_6_grad/SumSum5training/RMSprop/gradients/gru_1/while/mul_6_grad/MulGtraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*$
_class
loc:@gru_1/while/mul_6*
_output_shapes
:

9training/RMSprop/gradients/gru_1/while/mul_6_grad/ReshapeReshape5training/RMSprop/gradients/gru_1/while/mul_6_grad/Sum7training/RMSprop/gradients/gru_1/while/mul_6_grad/Shape*
T0*$
_class
loc:@gru_1/while/mul_6*
Tshape0*
_output_shapes
: 

7training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul_1Mul=training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul_1/Const9training/RMSprop/gradients/gru_1/while/add_1_grad/Reshape*
T0*$
_class
loc:@gru_1/while/mul_6*'
_output_shapes
:џџџџџџџџџ
Щ
=training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul_1/ConstConst^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_6*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
Ј
7training/RMSprop/gradients/gru_1/while/mul_6_grad/Sum_1Sum7training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul_1Itraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs:1*
T0*$
_class
loc:@gru_1/while/mul_6*
_output_shapes
:*
	keep_dims( *

Tidx0
Й
;training/RMSprop/gradients/gru_1/while/mul_6_grad/Reshape_1Reshape7training/RMSprop/gradients/gru_1/while/mul_6_grad/Sum_1Rtraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/StackPopV2*
T0*$
_class
loc:@gru_1/while/mul_6*
Tshape0*'
_output_shapes
:џџџџџџџџџ
у
Atraining/RMSprop/gradients/gru_1/while/strided_slice_2_grad/ShapeConst^training/RMSprop/gradients/Sub*
dtype0*
_output_shapes
:*.
_class$
" loc:@gru_1/while/strided_slice_2*
valueB"   0   
Ќ
Ltraining/RMSprop/gradients/gru_1/while/strided_slice_2_grad/StridedSliceGradStridedSliceGradAtraining/RMSprop/gradients/gru_1/while/strided_slice_2_grad/ShapeRtraining/RMSprop/gradients/gru_1/while/strided_slice_2_grad/StridedSliceGrad/ConstTtraining/RMSprop/gradients/gru_1/while/strided_slice_2_grad/StridedSliceGrad/Const_1Ttraining/RMSprop/gradients/gru_1/while/strided_slice_2_grad/StridedSliceGrad/Const_2=training/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:0*
T0*
Index0*.
_class$
" loc:@gru_1/while/strided_slice_2
є
Rtraining/RMSprop/gradients/gru_1/while/strided_slice_2_grad/StridedSliceGrad/ConstConst^training/RMSprop/gradients/Sub*
_output_shapes
:*.
_class$
" loc:@gru_1/while/strided_slice_2*
valueB"        *
dtype0
і
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_2_grad/StridedSliceGrad/Const_1Const^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_2*
valueB"        *
dtype0*
_output_shapes
:
і
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_2_grad/StridedSliceGrad/Const_2Const^training/RMSprop/gradients/Sub*
_output_shapes
:*.
_class$
" loc:@gru_1/while/strided_slice_2*
valueB"      *
dtype0
д
Atraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/ShapeShape#gru_1/while/clip_by_value_1/Minimum*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*
out_type0*
_output_shapes
:
з
Ctraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Shape_1Const^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/clip_by_value_1*
valueB *
dtype0*
_output_shapes
: 
ь
Ctraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Shape_2Shape9training/RMSprop/gradients/gru_1/while/mul_8_grad/Reshape*
_output_shapes
:*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*
out_type0
н
Gtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/zeros/ConstConst^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/clip_by_value_1*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
Atraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/zerosFillCtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Shape_2Gtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/zeros/Const*'
_output_shapes
:џџџџџџџџџ*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*

index_type0
с
Htraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqualGreaterEqualStraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/StackPopV2Ptraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/Const_1*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*'
_output_shapes
:џџџџџџџџџ
ѓ
Ntraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/ConstConst*X
_classN
L loc:@gru_1/while/clip_by_value_1(loc:@gru_1/while/clip_by_value_1/Minimum*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Т
Ntraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/f_accStackV2Ntraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/Const*X
_classN
L loc:@gru_1/while/clip_by_value_1(loc:@gru_1/while/clip_by_value_1/Minimum*

stack_name *
_output_shapes
:*
	elem_type0
е
Ntraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/EnterEnterNtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/f_acc*
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*
parallel_iterations 
ю
Ttraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/StackPushV2StackPushV2Ntraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/Enter#gru_1/while/clip_by_value_1/Minimum^training/RMSprop/gradients/Add*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*
swap_memory(*'
_output_shapes
:џџџџџџџџџ
Ч
Straining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/StackPopV2
StackPopV2Ytraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/StackPopV2/Enter^training/RMSprop/gradients/Sub*'
_output_shapes
:џџџџџџџџџ*
	elem_type0*.
_class$
" loc:@gru_1/while/clip_by_value_1
ћ
Ytraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/StackPopV2/EnterEnterNtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/f_acc*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*
parallel_iterations *
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context
ц
Ptraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/Const_1Const^training/RMSprop/gradients/Sub*
_output_shapes
: *.
_class$
" loc:@gru_1/while/clip_by_value_1*
valueB
 *    *
dtype0
њ
Qtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs\training/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2Ctraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Shape_1*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
в
Wtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/ConstConst*.
_class$
" loc:@gru_1/while/clip_by_value_1*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Њ
Wtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/f_accStackV2Wtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/Const*.
_class$
" loc:@gru_1/while/clip_by_value_1*

stack_name *
_output_shapes
:*
	elem_type0
ч
Wtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/EnterEnterWtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*
parallel_iterations 

]training/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2Wtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/EnterAtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Shape^training/RMSprop/gradients/Add*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*
swap_memory(*
_output_shapes
:
Ь
\training/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2btraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*
_output_shapes
:*
	elem_type0*.
_class$
" loc:@gru_1/while/clip_by_value_1

btraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterWtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/f_acc*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*
parallel_iterations *
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:
і
Btraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/SelectSelectHtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual9training/RMSprop/gradients/gru_1/while/mul_8_grad/ReshapeAtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/zeros*'
_output_shapes
:џџџџџџџџџ*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1
ј
Dtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Select_1SelectHtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqualAtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/zeros9training/RMSprop/gradients/gru_1/while/mul_8_grad/Reshape*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*'
_output_shapes
:џџџџџџџџџ
Э
?training/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/SumSumBtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/SelectQtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*
_output_shapes
:*
	keep_dims( *

Tidx0
н
Ctraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/ReshapeReshape?training/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Sum\training/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPopV2*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*
Tshape0*'
_output_shapes
:џџџџџџџџџ
г
Atraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Sum_1SumDtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Select_1Straining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*
_output_shapes
:
З
Etraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Reshape_1ReshapeAtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Sum_1Ctraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Shape_1*
T0*.
_class$
" loc:@gru_1/while/clip_by_value_1*
Tshape0*
_output_shapes
: 
Г
7training/RMSprop/gradients/gru_1/while/mul_5_grad/ShapeShapegru_1/while/Identity_2*$
_class
loc:@gru_1/while/mul_5*
out_type0*
_output_shapes
:*
T0
Э
9training/RMSprop/gradients/gru_1/while/mul_5_grad/Shape_1Shapegru_1/while/mul_5/Enter^gru_1/while/Identity*
T0*$
_class
loc:@gru_1/while/mul_5*
out_type0*
_output_shapes
:
э
Gtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsRtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPopV2Ttraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*
T0*$
_class
loc:@gru_1/while/mul_5*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
Mtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/ConstConst*
_output_shapes
: *$
_class
loc:@gru_1/while/mul_5*
valueB :
џџџџџџџџџ*
dtype0

Mtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/f_accStackV2Mtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/Const*$
_class
loc:@gru_1/while/mul_5*

stack_name *
_output_shapes
:*
	elem_type0
Щ
Mtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/EnterEnterMtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/f_acc*$
_class
loc:@gru_1/while/mul_5*
parallel_iterations *
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0
щ
Straining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPushV2StackPushV2Mtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/Enter7training/RMSprop/gradients/gru_1/while/mul_5_grad/Shape^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/mul_5*
swap_memory(*
_output_shapes
:
Ў
Rtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Xtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_5*
_output_shapes
:*
	elem_type0
я
Xtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPopV2/EnterEnterMtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_5*
parallel_iterations 
Р
Otraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/Const_1Const*$
_class
loc:@gru_1/while/mul_5*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Otraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/f_acc_1StackV2Otraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/Const_1*$
_class
loc:@gru_1/while/mul_5*

stack_name *
_output_shapes
:*
	elem_type0
Э
Otraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/Enter_1EnterOtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/f_acc_1*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_5*
parallel_iterations *
is_constant(
я
Utraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Otraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/Enter_19training/RMSprop/gradients/gru_1/while/mul_5_grad/Shape_1^training/RMSprop/gradients/Add*
swap_memory(*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/mul_5
В
Ttraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Ztraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training/RMSprop/gradients/Sub*
	elem_type0*$
_class
loc:@gru_1/while/mul_5*
_output_shapes
:
ѓ
Ztraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterOtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/mul_5

5training/RMSprop/gradients/gru_1/while/mul_5_grad/MulMul;training/RMSprop/gradients/gru_1/while/mul_8_grad/Reshape_1;training/RMSprop/gradients/gru_1/while/mul_5_grad/Mul/Enter*
T0*$
_class
loc:@gru_1/while/mul_5*'
_output_shapes
:џџџџџџџџџ
Є
;training/RMSprop/gradients/gru_1/while/mul_5_grad/Mul/EnterEntergru_1/cond_5/Merge*$
_class
loc:@gru_1/while/mul_5*
parallel_iterations *
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*'
_output_shapes
:џџџџџџџџџ*
T0
Ђ
5training/RMSprop/gradients/gru_1/while/mul_5_grad/SumSum5training/RMSprop/gradients/gru_1/while/mul_5_grad/MulGtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*$
_class
loc:@gru_1/while/mul_5*
_output_shapes
:
Е
9training/RMSprop/gradients/gru_1/while/mul_5_grad/ReshapeReshape5training/RMSprop/gradients/gru_1/while/mul_5_grad/SumRtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ*
T0*$
_class
loc:@gru_1/while/mul_5*
Tshape0

7training/RMSprop/gradients/gru_1/while/mul_5_grad/Mul_1Mul@training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/StackPopV2;training/RMSprop/gradients/gru_1/while/mul_8_grad/Reshape_1*
T0*$
_class
loc:@gru_1/while/mul_5*'
_output_shapes
:џџџџџџџџџ
Ј
7training/RMSprop/gradients/gru_1/while/mul_5_grad/Sum_1Sum7training/RMSprop/gradients/gru_1/while/mul_5_grad/Mul_1Itraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs:1*
T0*$
_class
loc:@gru_1/while/mul_5*
_output_shapes
:*
	keep_dims( *

Tidx0
Л
;training/RMSprop/gradients/gru_1/while/mul_5_grad/Reshape_1Reshape7training/RMSprop/gradients/gru_1/while/mul_5_grad/Sum_1Ttraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:џџџџџџџџџ*
T0*$
_class
loc:@gru_1/while/mul_5*
Tshape0
Ќ
5training/RMSprop/gradients/gru_1/while/add_grad/ShapeShapegru_1/while/BiasAdd*
T0*"
_class
loc:@gru_1/while/add*
out_type0*
_output_shapes
:
Џ
7training/RMSprop/gradients/gru_1/while/add_grad/Shape_1Shapegru_1/while/MatMul_3*"
_class
loc:@gru_1/while/add*
out_type0*
_output_shapes
:*
T0
х
Etraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgsBroadcastGradientArgsPtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPopV2Rtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPopV2_1*
T0*"
_class
loc:@gru_1/while/add*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
К
Ktraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/ConstConst*"
_class
loc:@gru_1/while/add*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Ktraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/f_accStackV2Ktraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/Const*"
_class
loc:@gru_1/while/add*

stack_name *
_output_shapes
:*
	elem_type0
У
Ktraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/EnterEnterKtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*"
_class
loc:@gru_1/while/add*
parallel_iterations 
с
Qtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2Ktraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/Enter5training/RMSprop/gradients/gru_1/while/add_grad/Shape^training/RMSprop/gradients/Add*
T0*"
_class
loc:@gru_1/while/add*
swap_memory(*
_output_shapes
:
Ј
Ptraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Vtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*"
_class
loc:@gru_1/while/add*
_output_shapes
:*
	elem_type0
щ
Vtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnterKtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/f_acc*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*"
_class
loc:@gru_1/while/add*
parallel_iterations *
is_constant(
М
Mtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/Const_1Const*"
_class
loc:@gru_1/while/add*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Mtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/f_acc_1StackV2Mtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/Const_1*"
_class
loc:@gru_1/while/add*

stack_name *
_output_shapes
:*
	elem_type0
Ч
Mtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/Enter_1EnterMtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/f_acc_1*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*"
_class
loc:@gru_1/while/add*
parallel_iterations *
is_constant(
ч
Straining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Mtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/Enter_17training/RMSprop/gradients/gru_1/while/add_grad/Shape_1^training/RMSprop/gradients/Add*"
_class
loc:@gru_1/while/add*
swap_memory(*
_output_shapes
:*
T0
Ќ
Rtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Xtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training/RMSprop/gradients/Sub*
	elem_type0*"
_class
loc:@gru_1/while/add*
_output_shapes
:
э
Xtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterMtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*"
_class
loc:@gru_1/while/add*
parallel_iterations 
Ђ
3training/RMSprop/gradients/gru_1/while/add_grad/SumSum;training/RMSprop/gradients/gru_1/while/mul_6_grad/Reshape_1Etraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*"
_class
loc:@gru_1/while/add
­
7training/RMSprop/gradients/gru_1/while/add_grad/ReshapeReshape3training/RMSprop/gradients/gru_1/while/add_grad/SumPtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPopV2*
T0*"
_class
loc:@gru_1/while/add*
Tshape0*'
_output_shapes
:џџџџџџџџџ
І
5training/RMSprop/gradients/gru_1/while/add_grad/Sum_1Sum;training/RMSprop/gradients/gru_1/while/mul_6_grad/Reshape_1Gtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*"
_class
loc:@gru_1/while/add
Г
9training/RMSprop/gradients/gru_1/while/add_grad/Reshape_1Reshape5training/RMSprop/gradients/gru_1/while/add_grad/Sum_1Rtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:џџџџџџџџџ*
T0*"
_class
loc:@gru_1/while/add*
Tshape0
в
Itraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/ShapeShapegru_1/while/add_3*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*
out_type0*
_output_shapes
:
ч
Ktraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/Shape_1Const^training/RMSprop/gradients/Sub*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*
valueB *
dtype0*
_output_shapes
: 

Ktraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/Shape_2ShapeCtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Reshape*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*
out_type0*
_output_shapes
:
э
Otraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/zeros/ConstConst^training/RMSprop/gradients/Sub*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*
valueB
 *    *
dtype0*
_output_shapes
: 
ы
Itraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/zerosFillKtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/Shape_2Otraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/zeros/Const*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*

index_type0*'
_output_shapes
:џџџџџџџџџ
ѕ
Mtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual	LessEqualXtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2Utraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/Const_1*'
_output_shapes
:џџџџџџџџџ*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum
ю
Straining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/ConstConst*N
_classD
Bloc:@gru_1/while/add_3(loc:@gru_1/while/clip_by_value_1/Minimum*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Т
Straining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/f_accStackV2Straining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/Const*N
_classD
Bloc:@gru_1/while/add_3(loc:@gru_1/while/clip_by_value_1/Minimum*

stack_name *
_output_shapes
:*
	elem_type0
ч
Straining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/EnterEnterStraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/f_acc*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*
parallel_iterations *
is_constant(
ю
Ytraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/StackPushV2StackPushV2Straining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/Entergru_1/while/add_3^training/RMSprop/gradients/Add*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*
swap_memory(*'
_output_shapes
:џџџџџџџџџ*
T0
й
Xtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2
StackPopV2^training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2/Enter^training/RMSprop/gradients/Sub*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ*
	elem_type0

^training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/StackPopV2/EnterEnterStraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/f_acc*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*
parallel_iterations *
is_constant(
ѓ
Utraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/Const_1Const^training/RMSprop/gradients/Sub*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Ytraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsdtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2Ktraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/Shape_1*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
т
_training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*
valueB :
џџџџџџџџџ
Т
_training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/f_accStackV2_training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/Const*
	elem_type0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*

stack_name *
_output_shapes
:
џ
_training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/EnterEnter_training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*
parallel_iterations 
Б
etraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPushV2StackPushV2_training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/EnterItraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/Shape^training/RMSprop/gradients/Add*
swap_memory(*
_output_shapes
:*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum
ф
dtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2
StackPopV2jtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*
_output_shapes
:*
	elem_type0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum
Ѕ
jtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2/EnterEnter_training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/f_acc*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*
parallel_iterations *
is_constant(

Jtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/SelectSelectMtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqualCtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/ReshapeItraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/zeros*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*'
_output_shapes
:џџџџџџџџџ

Ltraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/Select_1SelectMtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqualItraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/zerosCtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџ*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum
э
Gtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/SumSumJtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/SelectYtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*
_output_shapes
:
§
Ktraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/ReshapeReshapeGtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/Sumdtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPopV2*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*
Tshape0*'
_output_shapes
:џџџџџџџџџ
ѓ
Itraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/Sum_1SumLtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/Select_1[training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum
з
Mtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/Reshape_1ReshapeItraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/Sum_1Ktraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/Shape_1*
T0*6
_class,
*(loc:@gru_1/while/clip_by_value_1/Minimum*
Tshape0*
_output_shapes
: 
ы
?training/RMSprop/gradients/gru_1/while/BiasAdd_grad/BiasAddGradBiasAddGrad7training/RMSprop/gradients/gru_1/while/add_grad/Reshape*&
_class
loc:@gru_1/while/BiasAdd*
data_formatNHWC*
_output_shapes
:*
T0
Щ
;training/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMulMatMul9training/RMSprop/gradients/gru_1/while/add_grad/Reshape_1Ftraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/StackPopV2*'
_class
loc:@gru_1/while/MatMul_3*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b(*
T0
з
Atraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/ConstConst*
dtype0*
_output_shapes
: *I
_class?
=loc:@gru_1/while/MatMul_3 loc:@gru_1/while/strided_slice_6*
valueB :
џџџџџџџџџ

Atraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/f_accStackV2Atraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/Const*
	elem_type0*I
_class?
=loc:@gru_1/while/MatMul_3 loc:@gru_1/while/strided_slice_6*

stack_name *
_output_shapes
:
Д
Atraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/EnterEnterAtraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/f_acc*
T0*'
_class
loc:@gru_1/while/MatMul_3*
parallel_iterations *
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:
М
Gtraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/StackPushV2StackPushV2Atraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/Entergru_1/while/strided_slice_6^training/RMSprop/gradients/Add*
T0*'
_class
loc:@gru_1/while/MatMul_3*
swap_memory(*
_output_shapes

:

Ftraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/StackPopV2
StackPopV2Ltraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/StackPopV2/Enter^training/RMSprop/gradients/Sub*
_output_shapes

:*
	elem_type0*'
_class
loc:@gru_1/while/MatMul_3
к
Ltraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/StackPopV2/EnterEnterAtraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/f_acc*
T0*'
_class
loc:@gru_1/while/MatMul_3*
parallel_iterations *
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:
Ф
=training/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1MatMulHtraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/StackPopV29training/RMSprop/gradients/gru_1/while/add_grad/Reshape_1*
T0*'
_class
loc:@gru_1/while/MatMul_3*
transpose_a(*
_output_shapes

:*
transpose_b( 
Я
Ctraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/ConstConst*
_output_shapes
: *?
_class5
3loc:@gru_1/while/MatMul_3loc:@gru_1/while/mul_3*
valueB :
џџџџџџџџџ*
dtype0

Ctraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/f_accStackV2Ctraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/Const*?
_class5
3loc:@gru_1/while/MatMul_3loc:@gru_1/while/mul_3*

stack_name *
_output_shapes
:*
	elem_type0
И
Ctraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/EnterEnterCtraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/f_acc*
T0*'
_class
loc:@gru_1/while/MatMul_3*
parallel_iterations *
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context
П
Itraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/StackPushV2StackPushV2Ctraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/Entergru_1/while/mul_3^training/RMSprop/gradients/Add*
T0*'
_class
loc:@gru_1/while/MatMul_3*
swap_memory(*'
_output_shapes
:џџџџџџџџџ
Њ
Htraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/StackPopV2
StackPopV2Ntraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/StackPopV2/Enter^training/RMSprop/gradients/Sub*'
_class
loc:@gru_1/while/MatMul_3*'
_output_shapes
:џџџџџџџџџ*
	elem_type0
о
Ntraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/StackPopV2/EnterEnterCtraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/f_acc*
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*'
_class
loc:@gru_1/while/MatMul_3*
parallel_iterations 
Ў
7training/RMSprop/gradients/gru_1/while/add_3_grad/ShapeShapegru_1/while/mul_7*$
_class
loc:@gru_1/while/add_3*
out_type0*
_output_shapes
:*
T0
У
9training/RMSprop/gradients/gru_1/while/add_3_grad/Shape_1Const^training/RMSprop/gradients/Sub*
_output_shapes
: *$
_class
loc:@gru_1/while/add_3*
valueB *
dtype0
в
Gtraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsRtraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/StackPopV29training/RMSprop/gradients/gru_1/while/add_3_grad/Shape_1*
T0*$
_class
loc:@gru_1/while/add_3*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
Mtraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/ConstConst*
_output_shapes
: *$
_class
loc:@gru_1/while/add_3*
valueB :
џџџџџџџџџ*
dtype0

Mtraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/f_accStackV2Mtraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*$
_class
loc:@gru_1/while/add_3
Щ
Mtraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/EnterEnterMtraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/f_acc*
T0*$
_class
loc:@gru_1/while/add_3*
parallel_iterations *
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:
щ
Straining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2Mtraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/Enter7training/RMSprop/gradients/gru_1/while/add_3_grad/Shape^training/RMSprop/gradients/Add*
swap_memory(*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/add_3
Ў
Rtraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Xtraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/add_3*
_output_shapes
:*
	elem_type0
я
Xtraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/StackPopV2/EnterEnterMtraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/add_3*
parallel_iterations *
is_constant(
И
5training/RMSprop/gradients/gru_1/while/add_3_grad/SumSumKtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/ReshapeGtraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs*$
_class
loc:@gru_1/while/add_3*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Е
9training/RMSprop/gradients/gru_1/while/add_3_grad/ReshapeReshape5training/RMSprop/gradients/gru_1/while/add_3_grad/SumRtraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ*
T0*$
_class
loc:@gru_1/while/add_3*
Tshape0
М
7training/RMSprop/gradients/gru_1/while/add_3_grad/Sum_1SumKtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/ReshapeItraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*$
_class
loc:@gru_1/while/add_3*
_output_shapes
:

;training/RMSprop/gradients/gru_1/while/add_3_grad/Reshape_1Reshape7training/RMSprop/gradients/gru_1/while/add_3_grad/Sum_19training/RMSprop/gradients/gru_1/while/add_3_grad/Shape_1*
T0*$
_class
loc:@gru_1/while/add_3*
Tshape0*
_output_shapes
: 
С
9training/RMSprop/gradients/gru_1/while/MatMul_grad/MatMulMatMul7training/RMSprop/gradients/gru_1/while/add_grad/ReshapeDtraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/StackPopV2*
T0*%
_class
loc:@gru_1/while/MatMul*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b(
б
?training/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/ConstConst*E
_class;
9loc:@gru_1/while/MatMulloc:@gru_1/while/strided_slice*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

?training/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/f_accStackV2?training/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/Const*
	elem_type0*E
_class;
9loc:@gru_1/while/MatMulloc:@gru_1/while/strided_slice*

stack_name *
_output_shapes
:
Ў
?training/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/EnterEnter?training/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/f_acc*)

frame_namegru_1/while/while_context*
_output_shapes
:*
T0*%
_class
loc:@gru_1/while/MatMul*
parallel_iterations *
is_constant(
Д
Etraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/StackPushV2StackPushV2?training/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/Entergru_1/while/strided_slice^training/RMSprop/gradients/Add*
T0*%
_class
loc:@gru_1/while/MatMul*
swap_memory(*
_output_shapes

:

Dtraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/StackPopV2
StackPopV2Jtraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/StackPopV2/Enter^training/RMSprop/gradients/Sub*%
_class
loc:@gru_1/while/MatMul*
_output_shapes

:*
	elem_type0
д
Jtraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/StackPopV2/EnterEnter?training/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/f_acc*
T0*%
_class
loc:@gru_1/while/MatMul*
parallel_iterations *
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:
М
;training/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1MatMulFtraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/StackPopV27training/RMSprop/gradients/gru_1/while/add_grad/Reshape*
transpose_a(*
_output_shapes

:*
transpose_b( *
T0*%
_class
loc:@gru_1/while/MatMul
Щ
Atraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/ConstConst*;
_class1
/loc:@gru_1/while/MatMulloc:@gru_1/while/mul*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Atraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/f_accStackV2Atraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/Const*;
_class1
/loc:@gru_1/while/MatMulloc:@gru_1/while/mul*

stack_name *
_output_shapes
:*
	elem_type0
В
Atraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/EnterEnterAtraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/f_acc*
T0*%
_class
loc:@gru_1/while/MatMul*
parallel_iterations *
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:
З
Gtraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/StackPushV2StackPushV2Atraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/Entergru_1/while/mul^training/RMSprop/gradients/Add*%
_class
loc:@gru_1/while/MatMul*
swap_memory(*'
_output_shapes
:џџџџџџџџџ*
T0
Є
Ftraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/StackPopV2
StackPopV2Ltraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/StackPopV2/Enter^training/RMSprop/gradients/Sub*%
_class
loc:@gru_1/while/MatMul*'
_output_shapes
:џџџџџџџџџ*
	elem_type0
и
Ltraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/StackPopV2/EnterEnterAtraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/f_acc*
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*%
_class
loc:@gru_1/while/MatMul*
parallel_iterations 
м
Atraining/RMSprop/gradients/gru_1/while/strided_slice_3_grad/ShapeConst^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_3*
valueB:0*
dtype0*
_output_shapes
:
Њ
Ltraining/RMSprop/gradients/gru_1/while/strided_slice_3_grad/StridedSliceGradStridedSliceGradAtraining/RMSprop/gradients/gru_1/while/strided_slice_3_grad/ShapeRtraining/RMSprop/gradients/gru_1/while/strided_slice_3_grad/StridedSliceGrad/ConstTtraining/RMSprop/gradients/gru_1/while/strided_slice_3_grad/StridedSliceGrad/Const_1Ttraining/RMSprop/gradients/gru_1/while/strided_slice_3_grad/StridedSliceGrad/Const_2?training/RMSprop/gradients/gru_1/while/BiasAdd_grad/BiasAddGrad*
T0*
Index0*.
_class$
" loc:@gru_1/while/strided_slice_3*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:0
э
Rtraining/RMSprop/gradients/gru_1/while/strided_slice_3_grad/StridedSliceGrad/ConstConst^training/RMSprop/gradients/Sub*
dtype0*
_output_shapes
:*.
_class$
" loc:@gru_1/while/strided_slice_3*
valueB: 
я
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_3_grad/StridedSliceGrad/Const_1Const^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_3*
valueB:*
dtype0*
_output_shapes
:
я
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_3_grad/StridedSliceGrad/Const_2Const^training/RMSprop/gradients/Sub*
_output_shapes
:*.
_class$
" loc:@gru_1/while/strided_slice_3*
valueB:*
dtype0
Г
7training/RMSprop/gradients/gru_1/while/mul_3_grad/ShapeShapegru_1/while/Identity_2*$
_class
loc:@gru_1/while/mul_3*
out_type0*
_output_shapes
:*
T0
Э
9training/RMSprop/gradients/gru_1/while/mul_3_grad/Shape_1Shapegru_1/while/mul_3/Enter^gru_1/while/Identity*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/mul_3*
out_type0
э
Gtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsRtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPopV2Ttraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0*$
_class
loc:@gru_1/while/mul_3*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
Mtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/ConstConst*$
_class
loc:@gru_1/while/mul_3*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Mtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/f_accStackV2Mtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/Const*$
_class
loc:@gru_1/while/mul_3*

stack_name *
_output_shapes
:*
	elem_type0
Щ
Mtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/EnterEnterMtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_3*
parallel_iterations 
щ
Straining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2Mtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/Enter7training/RMSprop/gradients/gru_1/while/mul_3_grad/Shape^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/mul_3*
swap_memory(*
_output_shapes
:
Ў
Rtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Xtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_3*
_output_shapes
:*
	elem_type0
я
Xtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPopV2/EnterEnterMtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/f_acc*
T0*$
_class
loc:@gru_1/while/mul_3*
parallel_iterations *
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context
Р
Otraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/Const_1Const*$
_class
loc:@gru_1/while/mul_3*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Otraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/f_acc_1StackV2Otraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*
	elem_type0*$
_class
loc:@gru_1/while/mul_3*

stack_name 
Э
Otraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/Enter_1EnterOtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_3*
parallel_iterations 
я
Utraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Otraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/Enter_19training/RMSprop/gradients/gru_1/while/mul_3_grad/Shape_1^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/mul_3*
swap_memory(*
_output_shapes
:
В
Ttraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Ztraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training/RMSprop/gradients/Sub*
	elem_type0*$
_class
loc:@gru_1/while/mul_3*
_output_shapes
:
ѓ
Ztraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterOtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_3*
parallel_iterations 

5training/RMSprop/gradients/gru_1/while/mul_3_grad/MulMul;training/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul;training/RMSprop/gradients/gru_1/while/mul_3_grad/Mul/Enter*
T0*$
_class
loc:@gru_1/while/mul_3*'
_output_shapes
:џџџџџџџџџ
Є
;training/RMSprop/gradients/gru_1/while/mul_3_grad/Mul/EnterEntergru_1/cond_3/Merge*
is_constant(*'
_output_shapes
:џџџџџџџџџ*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_3*
parallel_iterations 
Ђ
5training/RMSprop/gradients/gru_1/while/mul_3_grad/SumSum5training/RMSprop/gradients/gru_1/while/mul_3_grad/MulGtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs*$
_class
loc:@gru_1/while/mul_3*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Е
9training/RMSprop/gradients/gru_1/while/mul_3_grad/ReshapeReshape5training/RMSprop/gradients/gru_1/while/mul_3_grad/SumRtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPopV2*$
_class
loc:@gru_1/while/mul_3*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0

7training/RMSprop/gradients/gru_1/while/mul_3_grad/Mul_1Mul@training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/StackPopV2;training/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul*'
_output_shapes
:џџџџџџџџџ*
T0*$
_class
loc:@gru_1/while/mul_3
Ј
7training/RMSprop/gradients/gru_1/while/mul_3_grad/Sum_1Sum7training/RMSprop/gradients/gru_1/while/mul_3_grad/Mul_1Itraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*$
_class
loc:@gru_1/while/mul_3*
_output_shapes
:
Л
;training/RMSprop/gradients/gru_1/while/mul_3_grad/Reshape_1Reshape7training/RMSprop/gradients/gru_1/while/mul_3_grad/Sum_1Ttraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0*$
_class
loc:@gru_1/while/mul_3*
Tshape0*'
_output_shapes
:џџџџџџџџџ
у
Atraining/RMSprop/gradients/gru_1/while/strided_slice_6_grad/ShapeConst^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_6*
valueB"   0   *
dtype0*
_output_shapes
:
Ќ
Ltraining/RMSprop/gradients/gru_1/while/strided_slice_6_grad/StridedSliceGradStridedSliceGradAtraining/RMSprop/gradients/gru_1/while/strided_slice_6_grad/ShapeRtraining/RMSprop/gradients/gru_1/while/strided_slice_6_grad/StridedSliceGrad/ConstTtraining/RMSprop/gradients/gru_1/while/strided_slice_6_grad/StridedSliceGrad/Const_1Ttraining/RMSprop/gradients/gru_1/while/strided_slice_6_grad/StridedSliceGrad/Const_2=training/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1*
_output_shapes

:0*
Index0*
T0*.
_class$
" loc:@gru_1/while/strided_slice_6*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
є
Rtraining/RMSprop/gradients/gru_1/while/strided_slice_6_grad/StridedSliceGrad/ConstConst^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_6*
valueB"        *
dtype0*
_output_shapes
:
і
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_6_grad/StridedSliceGrad/Const_1Const^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_6*
valueB"       *
dtype0*
_output_shapes
:
і
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_6_grad/StridedSliceGrad/Const_2Const^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_6*
valueB"      *
dtype0*
_output_shapes
:
С
7training/RMSprop/gradients/gru_1/while/mul_7_grad/ShapeConst^training/RMSprop/gradients/Sub*
_output_shapes
: *$
_class
loc:@gru_1/while/mul_7*
valueB *
dtype0
А
9training/RMSprop/gradients/gru_1/while/mul_7_grad/Shape_1Shapegru_1/while/add_2*
T0*$
_class
loc:@gru_1/while/mul_7*
out_type0*
_output_shapes
:
а
Gtraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgs7training/RMSprop/gradients/gru_1/while/mul_7_grad/ShapeRtraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/StackPopV2*$
_class
loc:@gru_1/while/mul_7*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
О
Mtraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/ConstConst*$
_class
loc:@gru_1/while/mul_7*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Mtraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/f_accStackV2Mtraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*$
_class
loc:@gru_1/while/mul_7*

stack_name 
Щ
Mtraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/EnterEnterMtraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_7*
parallel_iterations 
ы
Straining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/StackPushV2StackPushV2Mtraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/Enter9training/RMSprop/gradients/gru_1/while/mul_7_grad/Shape_1^training/RMSprop/gradients/Add*
swap_memory(*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/mul_7
Ў
Rtraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Xtraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*
	elem_type0*$
_class
loc:@gru_1/while/mul_7*
_output_shapes
:
я
Xtraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/StackPopV2/EnterEnterMtraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/f_acc*
T0*$
_class
loc:@gru_1/while/mul_7*
parallel_iterations *
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context

5training/RMSprop/gradients/gru_1/while/mul_7_grad/MulMul9training/RMSprop/gradients/gru_1/while/add_3_grad/Reshape@training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/StackPopV2*
T0*$
_class
loc:@gru_1/while/mul_7*'
_output_shapes
:џџџџџџџџџ
Ф
;training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/ConstConst*
_output_shapes
: *<
_class2
0loc:@gru_1/while/add_2loc:@gru_1/while/mul_7*
valueB :
џџџџџџџџџ*
dtype0

;training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/f_accStackV2;training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/Const*
_output_shapes
:*
	elem_type0*<
_class2
0loc:@gru_1/while/add_2loc:@gru_1/while/mul_7*

stack_name 
Ѕ
;training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/EnterEnter;training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/f_acc*
T0*$
_class
loc:@gru_1/while/mul_7*
parallel_iterations *
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context
Ќ
Atraining/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/StackPushV2StackPushV2;training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/Entergru_1/while/add_2^training/RMSprop/gradients/Add*$
_class
loc:@gru_1/while/mul_7*
swap_memory(*'
_output_shapes
:џџџџџџџџџ*
T0

@training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/StackPopV2
StackPopV2Ftraining/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/StackPopV2/Enter^training/RMSprop/gradients/Sub*
	elem_type0*$
_class
loc:@gru_1/while/mul_7*'
_output_shapes
:џџџџџџџџџ
Ы
Ftraining/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/StackPopV2/EnterEnter;training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/f_acc*
parallel_iterations *
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_7
Ђ
5training/RMSprop/gradients/gru_1/while/mul_7_grad/SumSum5training/RMSprop/gradients/gru_1/while/mul_7_grad/MulGtraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs*$
_class
loc:@gru_1/while/mul_7*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

9training/RMSprop/gradients/gru_1/while/mul_7_grad/ReshapeReshape5training/RMSprop/gradients/gru_1/while/mul_7_grad/Sum7training/RMSprop/gradients/gru_1/while/mul_7_grad/Shape*
T0*$
_class
loc:@gru_1/while/mul_7*
Tshape0*
_output_shapes
: 

7training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul_1Mul=training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul_1/Const9training/RMSprop/gradients/gru_1/while/add_3_grad/Reshape*$
_class
loc:@gru_1/while/mul_7*'
_output_shapes
:џџџџџџџџџ*
T0
Щ
=training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul_1/ConstConst^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_7*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
Ј
7training/RMSprop/gradients/gru_1/while/mul_7_grad/Sum_1Sum7training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul_1Itraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*$
_class
loc:@gru_1/while/mul_7*
_output_shapes
:
Й
;training/RMSprop/gradients/gru_1/while/mul_7_grad/Reshape_1Reshape7training/RMSprop/gradients/gru_1/while/mul_7_grad/Sum_1Rtraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/StackPopV2*
T0*$
_class
loc:@gru_1/while/mul_7*
Tshape0*'
_output_shapes
:џџџџџџџџџ
п
?training/RMSprop/gradients/gru_1/while/strided_slice_grad/ShapeConst^training/RMSprop/gradients/Sub*,
_class"
 loc:@gru_1/while/strided_slice*
valueB"   0   *
dtype0*
_output_shapes
:

Jtraining/RMSprop/gradients/gru_1/while/strided_slice_grad/StridedSliceGradStridedSliceGrad?training/RMSprop/gradients/gru_1/while/strided_slice_grad/ShapePtraining/RMSprop/gradients/gru_1/while/strided_slice_grad/StridedSliceGrad/ConstRtraining/RMSprop/gradients/gru_1/while/strided_slice_grad/StridedSliceGrad/Const_1Rtraining/RMSprop/gradients/gru_1/while/strided_slice_grad/StridedSliceGrad/Const_2;training/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1*
Index0*
T0*,
_class"
 loc:@gru_1/while/strided_slice*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes

:0
№
Ptraining/RMSprop/gradients/gru_1/while/strided_slice_grad/StridedSliceGrad/ConstConst^training/RMSprop/gradients/Sub*,
_class"
 loc:@gru_1/while/strided_slice*
valueB"        *
dtype0*
_output_shapes
:
ђ
Rtraining/RMSprop/gradients/gru_1/while/strided_slice_grad/StridedSliceGrad/Const_1Const^training/RMSprop/gradients/Sub*
dtype0*
_output_shapes
:*,
_class"
 loc:@gru_1/while/strided_slice*
valueB"       
ђ
Rtraining/RMSprop/gradients/gru_1/while/strided_slice_grad/StridedSliceGrad/Const_2Const^training/RMSprop/gradients/Sub*
dtype0*
_output_shapes
:*,
_class"
 loc:@gru_1/while/strided_slice*
valueB"      
В
7training/RMSprop/gradients/gru_1/while/add_2_grad/ShapeShapegru_1/while/BiasAdd_1*
T0*$
_class
loc:@gru_1/while/add_2*
out_type0*
_output_shapes
:
Г
9training/RMSprop/gradients/gru_1/while/add_2_grad/Shape_1Shapegru_1/while/MatMul_4*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/add_2*
out_type0
э
Gtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsRtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPopV2Ttraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*$
_class
loc:@gru_1/while/add_2*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
Mtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/ConstConst*$
_class
loc:@gru_1/while/add_2*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Mtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/f_accStackV2Mtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/Const*
	elem_type0*$
_class
loc:@gru_1/while/add_2*

stack_name *
_output_shapes
:
Щ
Mtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/EnterEnterMtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/add_2*
parallel_iterations 
щ
Straining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2Mtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/Enter7training/RMSprop/gradients/gru_1/while/add_2_grad/Shape^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/add_2*
swap_memory(*
_output_shapes
:
Ў
Rtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Xtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*
_output_shapes
:*
	elem_type0*$
_class
loc:@gru_1/while/add_2
я
Xtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnterMtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/f_acc*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/add_2*
parallel_iterations 
Р
Otraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/Const_1Const*$
_class
loc:@gru_1/while/add_2*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Otraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/f_acc_1StackV2Otraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/Const_1*$
_class
loc:@gru_1/while/add_2*

stack_name *
_output_shapes
:*
	elem_type0
Э
Otraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/Enter_1EnterOtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/add_2*
parallel_iterations 
я
Utraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Otraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/Enter_19training/RMSprop/gradients/gru_1/while/add_2_grad/Shape_1^training/RMSprop/gradients/Add*
swap_memory(*
_output_shapes
:*
T0*$
_class
loc:@gru_1/while/add_2
В
Ttraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Ztraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training/RMSprop/gradients/Sub*
_output_shapes
:*
	elem_type0*$
_class
loc:@gru_1/while/add_2
ѓ
Ztraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterOtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/add_2*
parallel_iterations 
Ј
5training/RMSprop/gradients/gru_1/while/add_2_grad/SumSum;training/RMSprop/gradients/gru_1/while/mul_7_grad/Reshape_1Gtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs*
T0*$
_class
loc:@gru_1/while/add_2*
_output_shapes
:*
	keep_dims( *

Tidx0
Е
9training/RMSprop/gradients/gru_1/while/add_2_grad/ReshapeReshape5training/RMSprop/gradients/gru_1/while/add_2_grad/SumRtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPopV2*
T0*$
_class
loc:@gru_1/while/add_2*
Tshape0*'
_output_shapes
:џџџџџџџџџ
Ќ
7training/RMSprop/gradients/gru_1/while/add_2_grad/Sum_1Sum;training/RMSprop/gradients/gru_1/while/mul_7_grad/Reshape_1Itraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*$
_class
loc:@gru_1/while/add_2
Л
;training/RMSprop/gradients/gru_1/while/add_2_grad/Reshape_1Reshape7training/RMSprop/gradients/gru_1/while/add_2_grad/Sum_1Ttraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*$
_class
loc:@gru_1/while/add_2*
Tshape0*'
_output_shapes
:џџџџџџџџџ
ё
Atraining/RMSprop/gradients/gru_1/while/BiasAdd_1_grad/BiasAddGradBiasAddGrad9training/RMSprop/gradients/gru_1/while/add_2_grad/Reshape*
T0*(
_class
loc:@gru_1/while/BiasAdd_1*
data_formatNHWC*
_output_shapes
:
Ы
;training/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMulMatMul;training/RMSprop/gradients/gru_1/while/add_2_grad/Reshape_1Ftraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/StackPopV2*
T0*'
_class
loc:@gru_1/while/MatMul_4*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b(
з
Atraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/ConstConst*I
_class?
=loc:@gru_1/while/MatMul_4 loc:@gru_1/while/strided_slice_7*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Atraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/f_accStackV2Atraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/Const*I
_class?
=loc:@gru_1/while/MatMul_4 loc:@gru_1/while/strided_slice_7*

stack_name *
_output_shapes
:*
	elem_type0
Д
Atraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/EnterEnterAtraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/f_acc*
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:*
T0*'
_class
loc:@gru_1/while/MatMul_4*
parallel_iterations 
М
Gtraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/StackPushV2StackPushV2Atraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/Entergru_1/while/strided_slice_7^training/RMSprop/gradients/Add*'
_class
loc:@gru_1/while/MatMul_4*
swap_memory(*
_output_shapes

:*
T0

Ftraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/StackPopV2
StackPopV2Ltraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/StackPopV2/Enter^training/RMSprop/gradients/Sub*
_output_shapes

:*
	elem_type0*'
_class
loc:@gru_1/while/MatMul_4
к
Ltraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/StackPopV2/EnterEnterAtraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/f_acc*
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*'
_class
loc:@gru_1/while/MatMul_4*
parallel_iterations 
Ц
=training/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1MatMulHtraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/StackPopV2;training/RMSprop/gradients/gru_1/while/add_2_grad/Reshape_1*'
_class
loc:@gru_1/while/MatMul_4*
transpose_a(*
_output_shapes

:*
transpose_b( *
T0
Я
Ctraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/ConstConst*?
_class5
3loc:@gru_1/while/MatMul_4loc:@gru_1/while/mul_4*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Ctraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/f_accStackV2Ctraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/Const*

stack_name *
_output_shapes
:*
	elem_type0*?
_class5
3loc:@gru_1/while/MatMul_4loc:@gru_1/while/mul_4
И
Ctraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/EnterEnterCtraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/f_acc*
T0*'
_class
loc:@gru_1/while/MatMul_4*
parallel_iterations *
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context
П
Itraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/StackPushV2StackPushV2Ctraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/Entergru_1/while/mul_4^training/RMSprop/gradients/Add*
T0*'
_class
loc:@gru_1/while/MatMul_4*
swap_memory(*'
_output_shapes
:џџџџџџџџџ
Њ
Htraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/StackPopV2
StackPopV2Ntraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/StackPopV2/Enter^training/RMSprop/gradients/Sub*'
_class
loc:@gru_1/while/MatMul_4*'
_output_shapes
:џџџџџџџџџ*
	elem_type0
о
Ntraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/StackPopV2/EnterEnterCtraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/f_acc*
T0*'
_class
loc:@gru_1/while/MatMul_4*
parallel_iterations *
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:
Щ
;training/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMulMatMul9training/RMSprop/gradients/gru_1/while/add_2_grad/ReshapeFtraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/StackPopV2*
T0*'
_class
loc:@gru_1/while/MatMul_1*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b(
з
Atraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/ConstConst*I
_class?
=loc:@gru_1/while/MatMul_1 loc:@gru_1/while/strided_slice_1*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Atraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/f_accStackV2Atraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/Const*

stack_name *
_output_shapes
:*
	elem_type0*I
_class?
=loc:@gru_1/while/MatMul_1 loc:@gru_1/while/strided_slice_1
Д
Atraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/EnterEnterAtraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/f_acc*
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:*
T0*'
_class
loc:@gru_1/while/MatMul_1*
parallel_iterations 
М
Gtraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/StackPushV2StackPushV2Atraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/Entergru_1/while/strided_slice_1^training/RMSprop/gradients/Add*
T0*'
_class
loc:@gru_1/while/MatMul_1*
swap_memory(*
_output_shapes

:

Ftraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/StackPopV2
StackPopV2Ltraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/StackPopV2/Enter^training/RMSprop/gradients/Sub*'
_class
loc:@gru_1/while/MatMul_1*
_output_shapes

:*
	elem_type0
к
Ltraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/StackPopV2/EnterEnterAtraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/f_acc*
is_constant(*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:*
T0*'
_class
loc:@gru_1/while/MatMul_1*
parallel_iterations 
Ф
=training/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1MatMulHtraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/StackPopV29training/RMSprop/gradients/gru_1/while/add_2_grad/Reshape*
T0*'
_class
loc:@gru_1/while/MatMul_1*
transpose_a(*
_output_shapes

:*
transpose_b( 
Я
Ctraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/ConstConst*?
_class5
3loc:@gru_1/while/MatMul_1loc:@gru_1/while/mul_1*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Ctraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/f_accStackV2Ctraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/Const*
	elem_type0*?
_class5
3loc:@gru_1/while/MatMul_1loc:@gru_1/while/mul_1*

stack_name *
_output_shapes
:
И
Ctraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/EnterEnterCtraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/f_acc*
is_constant(*)

frame_namegru_1/while/while_context*
_output_shapes
:*
T0*'
_class
loc:@gru_1/while/MatMul_1*
parallel_iterations 
П
Itraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/StackPushV2StackPushV2Ctraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/Entergru_1/while/mul_1^training/RMSprop/gradients/Add*
T0*'
_class
loc:@gru_1/while/MatMul_1*
swap_memory(*'
_output_shapes
:џџџџџџџџџ
Њ
Htraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/StackPopV2
StackPopV2Ntraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/StackPopV2/Enter^training/RMSprop/gradients/Sub*'
_output_shapes
:џџџџџџџџџ*
	elem_type0*'
_class
loc:@gru_1/while/MatMul_1
о
Ntraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/StackPopV2/EnterEnterCtraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/f_acc*
T0*'
_class
loc:@gru_1/while/MatMul_1*
parallel_iterations *
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context
м
Atraining/RMSprop/gradients/gru_1/while/strided_slice_4_grad/ShapeConst^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_4*
valueB:0*
dtype0*
_output_shapes
:
Ќ
Ltraining/RMSprop/gradients/gru_1/while/strided_slice_4_grad/StridedSliceGradStridedSliceGradAtraining/RMSprop/gradients/gru_1/while/strided_slice_4_grad/ShapeRtraining/RMSprop/gradients/gru_1/while/strided_slice_4_grad/StridedSliceGrad/ConstTtraining/RMSprop/gradients/gru_1/while/strided_slice_4_grad/StridedSliceGrad/Const_1Ttraining/RMSprop/gradients/gru_1/while/strided_slice_4_grad/StridedSliceGrad/Const_2Atraining/RMSprop/gradients/gru_1/while/BiasAdd_1_grad/BiasAddGrad*
T0*
Index0*.
_class$
" loc:@gru_1/while/strided_slice_4*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
:0
э
Rtraining/RMSprop/gradients/gru_1/while/strided_slice_4_grad/StridedSliceGrad/ConstConst^training/RMSprop/gradients/Sub*
dtype0*
_output_shapes
:*.
_class$
" loc:@gru_1/while/strided_slice_4*
valueB:
я
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_4_grad/StridedSliceGrad/Const_1Const^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_4*
valueB: *
dtype0*
_output_shapes
:
я
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_4_grad/StridedSliceGrad/Const_2Const^training/RMSprop/gradients/Sub*
dtype0*
_output_shapes
:*.
_class$
" loc:@gru_1/while/strided_slice_4*
valueB:
Г
7training/RMSprop/gradients/gru_1/while/mul_4_grad/ShapeShapegru_1/while/Identity_2*$
_class
loc:@gru_1/while/mul_4*
out_type0*
_output_shapes
:*
T0
Э
9training/RMSprop/gradients/gru_1/while/mul_4_grad/Shape_1Shapegru_1/while/mul_4/Enter^gru_1/while/Identity*
T0*$
_class
loc:@gru_1/while/mul_4*
out_type0*
_output_shapes
:
э
Gtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsRtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPopV2Ttraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*
T0*$
_class
loc:@gru_1/while/mul_4*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
Mtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/ConstConst*$
_class
loc:@gru_1/while/mul_4*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Mtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/f_accStackV2Mtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*$
_class
loc:@gru_1/while/mul_4
Щ
Mtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/EnterEnterMtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*)

frame_namegru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_4*
parallel_iterations *
is_constant(
щ
Straining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPushV2StackPushV2Mtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/Enter7training/RMSprop/gradients/gru_1/while/mul_4_grad/Shape^training/RMSprop/gradients/Add*
T0*$
_class
loc:@gru_1/while/mul_4*
swap_memory(*
_output_shapes
:
Ў
Rtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Xtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPopV2/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_4*
_output_shapes
:*
	elem_type0
я
Xtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPopV2/EnterEnterMtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/f_acc*
T0*$
_class
loc:@gru_1/while/mul_4*
parallel_iterations *
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context
Р
Otraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/Const_1Const*$
_class
loc:@gru_1/while/mul_4*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

Otraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/f_acc_1StackV2Otraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*
	elem_type0*$
_class
loc:@gru_1/while/mul_4*

stack_name 
Э
Otraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/Enter_1EnterOtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/f_acc_1*
T0*$
_class
loc:@gru_1/while/mul_4*
parallel_iterations *
is_constant(*
_output_shapes
:*)

frame_namegru_1/while/while_context
я
Utraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Otraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/Enter_19training/RMSprop/gradients/gru_1/while/mul_4_grad/Shape_1^training/RMSprop/gradients/Add*$
_class
loc:@gru_1/while/mul_4*
swap_memory(*
_output_shapes
:*
T0
В
Ttraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Ztraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPopV2_1/Enter^training/RMSprop/gradients/Sub*$
_class
loc:@gru_1/while/mul_4*
_output_shapes
:*
	elem_type0
ѓ
Ztraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterOtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
_output_shapes
:*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_4*
parallel_iterations 

5training/RMSprop/gradients/gru_1/while/mul_4_grad/MulMul;training/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul;training/RMSprop/gradients/gru_1/while/mul_4_grad/Mul/Enter*
T0*$
_class
loc:@gru_1/while/mul_4*'
_output_shapes
:џџџџџџџџџ
Є
;training/RMSprop/gradients/gru_1/while/mul_4_grad/Mul/EnterEntergru_1/cond_4/Merge*
parallel_iterations *
is_constant(*'
_output_shapes
:џџџџџџџџџ*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
T0*$
_class
loc:@gru_1/while/mul_4
Ђ
5training/RMSprop/gradients/gru_1/while/mul_4_grad/SumSum5training/RMSprop/gradients/gru_1/while/mul_4_grad/MulGtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs*
T0*$
_class
loc:@gru_1/while/mul_4*
_output_shapes
:*
	keep_dims( *

Tidx0
Е
9training/RMSprop/gradients/gru_1/while/mul_4_grad/ReshapeReshape5training/RMSprop/gradients/gru_1/while/mul_4_grad/SumRtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPopV2*
T0*$
_class
loc:@gru_1/while/mul_4*
Tshape0*'
_output_shapes
:џџџџџџџџџ

7training/RMSprop/gradients/gru_1/while/mul_4_grad/Mul_1Mul@training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/StackPopV2;training/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul*
T0*$
_class
loc:@gru_1/while/mul_4*'
_output_shapes
:џџџџџџџџџ
Ј
7training/RMSprop/gradients/gru_1/while/mul_4_grad/Sum_1Sum7training/RMSprop/gradients/gru_1/while/mul_4_grad/Mul_1Itraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs:1*
T0*$
_class
loc:@gru_1/while/mul_4*
_output_shapes
:*
	keep_dims( *

Tidx0
Л
;training/RMSprop/gradients/gru_1/while/mul_4_grad/Reshape_1Reshape7training/RMSprop/gradients/gru_1/while/mul_4_grad/Sum_1Ttraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*
T0*$
_class
loc:@gru_1/while/mul_4*
Tshape0*'
_output_shapes
:џџџџџџџџџ
у
Atraining/RMSprop/gradients/gru_1/while/strided_slice_7_grad/ShapeConst^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_7*
valueB"   0   *
dtype0*
_output_shapes
:
Ќ
Ltraining/RMSprop/gradients/gru_1/while/strided_slice_7_grad/StridedSliceGradStridedSliceGradAtraining/RMSprop/gradients/gru_1/while/strided_slice_7_grad/ShapeRtraining/RMSprop/gradients/gru_1/while/strided_slice_7_grad/StridedSliceGrad/ConstTtraining/RMSprop/gradients/gru_1/while/strided_slice_7_grad/StridedSliceGrad/Const_1Ttraining/RMSprop/gradients/gru_1/while/strided_slice_7_grad/StridedSliceGrad/Const_2=training/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1*
_output_shapes

:0*
Index0*
T0*.
_class$
" loc:@gru_1/while/strided_slice_7*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask
є
Rtraining/RMSprop/gradients/gru_1/while/strided_slice_7_grad/StridedSliceGrad/ConstConst^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_7*
valueB"       *
dtype0*
_output_shapes
:
і
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_7_grad/StridedSliceGrad/Const_1Const^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_7*
valueB"        *
dtype0*
_output_shapes
:
і
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_7_grad/StridedSliceGrad/Const_2Const^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_7*
valueB"      *
dtype0*
_output_shapes
:
у
Atraining/RMSprop/gradients/gru_1/while/strided_slice_1_grad/ShapeConst^training/RMSprop/gradients/Sub*
_output_shapes
:*.
_class$
" loc:@gru_1/while/strided_slice_1*
valueB"   0   *
dtype0
Ќ
Ltraining/RMSprop/gradients/gru_1/while/strided_slice_1_grad/StridedSliceGradStridedSliceGradAtraining/RMSprop/gradients/gru_1/while/strided_slice_1_grad/ShapeRtraining/RMSprop/gradients/gru_1/while/strided_slice_1_grad/StridedSliceGrad/ConstTtraining/RMSprop/gradients/gru_1/while/strided_slice_1_grad/StridedSliceGrad/Const_1Ttraining/RMSprop/gradients/gru_1/while/strided_slice_1_grad/StridedSliceGrad/Const_2=training/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1*
end_mask*
_output_shapes

:0*
T0*
Index0*.
_class$
" loc:@gru_1/while/strided_slice_1*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
є
Rtraining/RMSprop/gradients/gru_1/while/strided_slice_1_grad/StridedSliceGrad/ConstConst^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_1*
valueB"       *
dtype0*
_output_shapes
:
і
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_1_grad/StridedSliceGrad/Const_1Const^training/RMSprop/gradients/Sub*.
_class$
" loc:@gru_1/while/strided_slice_1*
valueB"        *
dtype0*
_output_shapes
:
і
Ttraining/RMSprop/gradients/gru_1/while/strided_slice_1_grad/StridedSliceGrad/Const_2Const^training/RMSprop/gradients/Sub*
_output_shapes
:*.
_class$
" loc:@gru_1/while/strided_slice_1*
valueB"      *
dtype0
ё
!training/RMSprop/gradients/AddN_2AddNLtraining/RMSprop/gradients/gru_1/while/strided_slice_5_grad/StridedSliceGradLtraining/RMSprop/gradients/gru_1/while/strided_slice_3_grad/StridedSliceGradLtraining/RMSprop/gradients/gru_1/while/strided_slice_4_grad/StridedSliceGrad*
_output_shapes
:0*
T0*.
_class$
" loc:@gru_1/while/strided_slice_5*
N
Ъ
Gtraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/b_accConst*4
_class*
(&loc:@gru_1/while/strided_slice_3/Enter*
valueB0*    *
dtype0*
_output_shapes
:0
ъ
Itraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/b_acc_1EnterGtraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/b_acc*
is_constant( *D

frame_name64training/RMSprop/gradients/gru_1/while/while_context*
_output_shapes
:0*
T0*4
_class*
(&loc:@gru_1/while/strided_slice_3/Enter*
parallel_iterations 
д
Itraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/b_acc_2MergeItraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/b_acc_1Otraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/NextIteration*
_output_shapes

:0: *
T0*4
_class*
(&loc:@gru_1/while/strided_slice_3/Enter*
N
Є
Htraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/SwitchSwitchItraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/b_acc_2$training/RMSprop/gradients/b_count_2*4
_class*
(&loc:@gru_1/while/strided_slice_3/Enter* 
_output_shapes
:0:0*
T0

Etraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/AddAddJtraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/Switch:1!training/RMSprop/gradients/AddN_2*
T0*4
_class*
(&loc:@gru_1/while/strided_slice_3/Enter*
_output_shapes
:0

Otraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/NextIterationNextIterationEtraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/Add*
T0*4
_class*
(&loc:@gru_1/while/strided_slice_3/Enter*
_output_shapes
:0
і
Itraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/b_acc_3ExitHtraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/Switch*
T0*4
_class*
(&loc:@gru_1/while/strided_slice_3/Enter*
_output_shapes
:0
ј
!training/RMSprop/gradients/AddN_3AddN;training/RMSprop/gradients/gru_1/while/mul_9_grad/Reshape_19training/RMSprop/gradients/gru_1/while/mul_5_grad/Reshape9training/RMSprop/gradients/gru_1/while/mul_3_grad/Reshape9training/RMSprop/gradients/gru_1/while/mul_4_grad/Reshape*
N*'
_output_shapes
:џџџџџџџџџ*
T0*$
_class
loc:@gru_1/while/mul_9
ѕ
!training/RMSprop/gradients/AddN_4AddNLtraining/RMSprop/gradients/gru_1/while/strided_slice_8_grad/StridedSliceGradLtraining/RMSprop/gradients/gru_1/while/strided_slice_6_grad/StridedSliceGradLtraining/RMSprop/gradients/gru_1/while/strided_slice_7_grad/StridedSliceGrad*
T0*.
_class$
" loc:@gru_1/while/strided_slice_8*
N*
_output_shapes

:0
в
Gtraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/b_accConst*
_output_shapes

:0*4
_class*
(&loc:@gru_1/while/strided_slice_6/Enter*
valueB0*    *
dtype0
ю
Itraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/b_acc_1EnterGtraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/b_acc*
T0*4
_class*
(&loc:@gru_1/while/strided_slice_6/Enter*
parallel_iterations *
is_constant( *
_output_shapes

:0*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context
и
Itraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/b_acc_2MergeItraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/b_acc_1Otraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/NextIteration*
T0*4
_class*
(&loc:@gru_1/while/strided_slice_6/Enter*
N* 
_output_shapes
:0: 
Ќ
Htraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/SwitchSwitchItraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/b_acc_2$training/RMSprop/gradients/b_count_2*4
_class*
(&loc:@gru_1/while/strided_slice_6/Enter*(
_output_shapes
:0:0*
T0

Etraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/AddAddJtraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/Switch:1!training/RMSprop/gradients/AddN_4*
_output_shapes

:0*
T0*4
_class*
(&loc:@gru_1/while/strided_slice_6/Enter

Otraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/NextIterationNextIterationEtraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/Add*
T0*4
_class*
(&loc:@gru_1/while/strided_slice_6/Enter*
_output_shapes

:0
њ
Itraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/b_acc_3ExitHtraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/Switch*
T0*4
_class*
(&loc:@gru_1/while/strided_slice_6/Enter*
_output_shapes

:0
ѓ
!training/RMSprop/gradients/AddN_5AddNLtraining/RMSprop/gradients/gru_1/while/strided_slice_2_grad/StridedSliceGradJtraining/RMSprop/gradients/gru_1/while/strided_slice_grad/StridedSliceGradLtraining/RMSprop/gradients/gru_1/while/strided_slice_1_grad/StridedSliceGrad*
N*
_output_shapes

:0*
T0*.
_class$
" loc:@gru_1/while/strided_slice_2
Ю
Etraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/b_accConst*2
_class(
&$loc:@gru_1/while/strided_slice/Enter*
valueB0*    *
dtype0*
_output_shapes

:0
ш
Gtraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/b_acc_1EnterEtraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/b_acc*
T0*2
_class(
&$loc:@gru_1/while/strided_slice/Enter*
parallel_iterations *
is_constant( *
_output_shapes

:0*D

frame_name64training/RMSprop/gradients/gru_1/while/while_context
а
Gtraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/b_acc_2MergeGtraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/b_acc_1Mtraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/NextIteration*
T0*2
_class(
&$loc:@gru_1/while/strided_slice/Enter*
N* 
_output_shapes
:0: 
І
Ftraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/SwitchSwitchGtraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/b_acc_2$training/RMSprop/gradients/b_count_2*2
_class(
&$loc:@gru_1/while/strided_slice/Enter*(
_output_shapes
:0:0*
T0

Ctraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/AddAddHtraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/Switch:1!training/RMSprop/gradients/AddN_5*2
_class(
&$loc:@gru_1/while/strided_slice/Enter*
_output_shapes

:0*
T0

Mtraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/NextIterationNextIterationCtraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/Add*
T0*2
_class(
&$loc:@gru_1/while/strided_slice/Enter*
_output_shapes

:0
є
Gtraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/b_acc_3ExitFtraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/Switch*
T0*2
_class(
&$loc:@gru_1/while/strided_slice/Enter*
_output_shapes

:0
в
Dtraining/RMSprop/gradients/gru_1/while/Switch_2_grad_1/NextIterationNextIteration!training/RMSprop/gradients/AddN_3*&
_class
loc:@gru_1/while/Merge_2*'
_output_shapes
:џџџџџџџџџ*
T0
w
&training/RMSprop/zeros/shape_as_tensorConst*
valueB"   0   *
dtype0*
_output_shapes
:
a
training/RMSprop/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/RMSprop/zerosFill&training/RMSprop/zeros/shape_as_tensortraining/RMSprop/zeros/Const*
_output_shapes

:0*
T0*

index_type0

training/RMSprop/VariableVarHandleOp*
dtype0*
	container *
_output_shapes
: *
shape
:0**
shared_nametraining/RMSprop/Variable

:training/RMSprop/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable*
_output_shapes
: 
Ђ
 training/RMSprop/Variable/AssignAssignVariableOptraining/RMSprop/Variabletraining/RMSprop/zeros*,
_class"
 loc:@training/RMSprop/Variable*
dtype0
Е
-training/RMSprop/Variable/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable*,
_class"
 loc:@training/RMSprop/Variable*
dtype0*
_output_shapes

:0
y
(training/RMSprop/zeros_1/shape_as_tensorConst*
valueB"   0   *
dtype0*
_output_shapes
:
c
training/RMSprop/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/RMSprop/zeros_1Fill(training/RMSprop/zeros_1/shape_as_tensortraining/RMSprop/zeros_1/Const*
T0*

index_type0*
_output_shapes

:0
Ѓ
training/RMSprop/Variable_1VarHandleOp*
	container *
_output_shapes
: *
shape
:0*,
shared_nametraining/RMSprop/Variable_1*
dtype0

<training/RMSprop/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_1*
_output_shapes
: 
Њ
"training/RMSprop/Variable_1/AssignAssignVariableOptraining/RMSprop/Variable_1training/RMSprop/zeros_1*.
_class$
" loc:@training/RMSprop/Variable_1*
dtype0
Л
/training/RMSprop/Variable_1/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_1*.
_class$
" loc:@training/RMSprop/Variable_1*
dtype0*
_output_shapes

:0
r
(training/RMSprop/zeros_2/shape_as_tensorConst*
_output_shapes
:*
valueB:0*
dtype0
c
training/RMSprop/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ё
training/RMSprop/zeros_2Fill(training/RMSprop/zeros_2/shape_as_tensortraining/RMSprop/zeros_2/Const*
T0*

index_type0*
_output_shapes
:0

training/RMSprop/Variable_2VarHandleOp*
	container *
_output_shapes
: *
shape:0*,
shared_nametraining/RMSprop/Variable_2*
dtype0

<training/RMSprop/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_2*
_output_shapes
: 
Њ
"training/RMSprop/Variable_2/AssignAssignVariableOptraining/RMSprop/Variable_2training/RMSprop/zeros_2*.
_class$
" loc:@training/RMSprop/Variable_2*
dtype0
З
/training/RMSprop/Variable_2/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_2*
_output_shapes
:0*.
_class$
" loc:@training/RMSprop/Variable_2*
dtype0
y
(training/RMSprop/zeros_3/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
c
training/RMSprop/zeros_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/RMSprop/zeros_3Fill(training/RMSprop/zeros_3/shape_as_tensortraining/RMSprop/zeros_3/Const*
_output_shapes

:*
T0*

index_type0
Ѓ
training/RMSprop/Variable_3VarHandleOp*
dtype0*
	container *
_output_shapes
: *
shape
:*,
shared_nametraining/RMSprop/Variable_3

<training/RMSprop/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_3*
_output_shapes
: 
Њ
"training/RMSprop/Variable_3/AssignAssignVariableOptraining/RMSprop/Variable_3training/RMSprop/zeros_3*.
_class$
" loc:@training/RMSprop/Variable_3*
dtype0
Л
/training/RMSprop/Variable_3/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_3*
dtype0*
_output_shapes

:*.
_class$
" loc:@training/RMSprop/Variable_3
r
(training/RMSprop/zeros_4/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
c
training/RMSprop/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ё
training/RMSprop/zeros_4Fill(training/RMSprop/zeros_4/shape_as_tensortraining/RMSprop/zeros_4/Const*

index_type0*
_output_shapes
:*
T0

training/RMSprop/Variable_4VarHandleOp*
dtype0*
	container *
_output_shapes
: *
shape:*,
shared_nametraining/RMSprop/Variable_4

<training/RMSprop/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_4*
_output_shapes
: 
Њ
"training/RMSprop/Variable_4/AssignAssignVariableOptraining/RMSprop/Variable_4training/RMSprop/zeros_4*.
_class$
" loc:@training/RMSprop/Variable_4*
dtype0
З
/training/RMSprop/Variable_4/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_4*.
_class$
" loc:@training/RMSprop/Variable_4*
dtype0*
_output_shapes
:
X
training/RMSprop/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R
t
$training/RMSprop/AssignAddVariableOpAssignAddVariableOpRMSprop/iterationstraining/RMSprop/Const*
dtype0	

training/RMSprop/ReadVariableOpReadVariableOpRMSprop/iterations%^training/RMSprop/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
e
!training/RMSprop/ReadVariableOp_1ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
}
#training/RMSprop/mul/ReadVariableOpReadVariableOptraining/RMSprop/Variable*
dtype0*
_output_shapes

:0

training/RMSprop/mulMul!training/RMSprop/ReadVariableOp_1#training/RMSprop/mul/ReadVariableOp*
T0*
_output_shapes

:0
e
!training/RMSprop/ReadVariableOp_2ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
[
training/RMSprop/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
w
training/RMSprop/subSubtraining/RMSprop/sub/x!training/RMSprop/ReadVariableOp_2*
_output_shapes
: *
T0

training/RMSprop/SquareSquareGtraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/b_acc_3*
T0*
_output_shapes

:0
u
training/RMSprop/mul_1Multraining/RMSprop/subtraining/RMSprop/Square*
T0*
_output_shapes

:0
r
training/RMSprop/addAddtraining/RMSprop/multraining/RMSprop/mul_1*
_output_shapes

:0*
T0
s
!training/RMSprop/AssignVariableOpAssignVariableOptraining/RMSprop/Variabletraining/RMSprop/add*
dtype0

!training/RMSprop/ReadVariableOp_3ReadVariableOptraining/RMSprop/Variable"^training/RMSprop/AssignVariableOp*
dtype0*
_output_shapes

:0
d
!training/RMSprop/ReadVariableOp_4ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
В
training/RMSprop/mul_2Mul!training/RMSprop/ReadVariableOp_4Gtraining/RMSprop/gradients/gru_1/while/strided_slice/Enter_grad/b_acc_3*
_output_shapes

:0*
T0
]
training/RMSprop/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
]
training/RMSprop/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *  

&training/RMSprop/clip_by_value/MinimumMinimumtraining/RMSprop/addtraining/RMSprop/Const_2*
_output_shapes

:0*
T0

training/RMSprop/clip_by_valueMaximum&training/RMSprop/clip_by_value/Minimumtraining/RMSprop/Const_1*
T0*
_output_shapes

:0
f
training/RMSprop/SqrtSqrttraining/RMSprop/clip_by_value*
T0*
_output_shapes

:0
]
training/RMSprop/add_1/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
w
training/RMSprop/add_1Addtraining/RMSprop/Sqrttraining/RMSprop/add_1/y*
_output_shapes

:0*
T0
|
training/RMSprop/truedivRealDivtraining/RMSprop/mul_2training/RMSprop/add_1*
T0*
_output_shapes

:0
|
training/RMSprop/sub_1Subgru_1/gru_cell/kernel/readtraining/RMSprop/truediv*
T0*
_output_shapes

:0
Ь
training/RMSprop/AssignAssigngru_1/gru_cell/kerneltraining/RMSprop/sub_1*
validate_shape(*
_output_shapes

:0*
use_locking(*
T0*(
_class
loc:@gru_1/gru_cell/kernel
e
!training/RMSprop/ReadVariableOp_5ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 

%training/RMSprop/mul_3/ReadVariableOpReadVariableOptraining/RMSprop/Variable_1*
_output_shapes

:0*
dtype0

training/RMSprop/mul_3Mul!training/RMSprop/ReadVariableOp_5%training/RMSprop/mul_3/ReadVariableOp*
T0*
_output_shapes

:0
e
!training/RMSprop/ReadVariableOp_6ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
]
training/RMSprop/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training/RMSprop/sub_2Subtraining/RMSprop/sub_2/x!training/RMSprop/ReadVariableOp_6*
_output_shapes
: *
T0

training/RMSprop/Square_1SquareItraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/b_acc_3*
_output_shapes

:0*
T0
y
training/RMSprop/mul_4Multraining/RMSprop/sub_2training/RMSprop/Square_1*
T0*
_output_shapes

:0
v
training/RMSprop/add_2Addtraining/RMSprop/mul_3training/RMSprop/mul_4*
T0*
_output_shapes

:0
y
#training/RMSprop/AssignVariableOp_1AssignVariableOptraining/RMSprop/Variable_1training/RMSprop/add_2*
dtype0
Ѓ
!training/RMSprop/ReadVariableOp_7ReadVariableOptraining/RMSprop/Variable_1$^training/RMSprop/AssignVariableOp_1*
dtype0*
_output_shapes

:0
d
!training/RMSprop/ReadVariableOp_8ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
Д
training/RMSprop/mul_5Mul!training/RMSprop/ReadVariableOp_8Itraining/RMSprop/gradients/gru_1/while/strided_slice_6/Enter_grad/b_acc_3*
T0*
_output_shapes

:0
]
training/RMSprop/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_4Const*
valueB
 *  *
dtype0*
_output_shapes
: 

(training/RMSprop/clip_by_value_1/MinimumMinimumtraining/RMSprop/add_2training/RMSprop/Const_4*
T0*
_output_shapes

:0

 training/RMSprop/clip_by_value_1Maximum(training/RMSprop/clip_by_value_1/Minimumtraining/RMSprop/Const_3*
T0*
_output_shapes

:0
j
training/RMSprop/Sqrt_1Sqrt training/RMSprop/clip_by_value_1*
T0*
_output_shapes

:0
]
training/RMSprop/add_3/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
y
training/RMSprop/add_3Addtraining/RMSprop/Sqrt_1training/RMSprop/add_3/y*
T0*
_output_shapes

:0
~
training/RMSprop/truediv_1RealDivtraining/RMSprop/mul_5training/RMSprop/add_3*
_output_shapes

:0*
T0

training/RMSprop/sub_3Sub$gru_1/gru_cell/recurrent_kernel/readtraining/RMSprop/truediv_1*
T0*
_output_shapes

:0
т
training/RMSprop/Assign_1Assigngru_1/gru_cell/recurrent_kerneltraining/RMSprop/sub_3*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
validate_shape(*
_output_shapes

:0*
use_locking(*
T0
e
!training/RMSprop/ReadVariableOp_9ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
}
%training/RMSprop/mul_6/ReadVariableOpReadVariableOptraining/RMSprop/Variable_2*
dtype0*
_output_shapes
:0

training/RMSprop/mul_6Mul!training/RMSprop/ReadVariableOp_9%training/RMSprop/mul_6/ReadVariableOp*
T0*
_output_shapes
:0
f
"training/RMSprop/ReadVariableOp_10ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
]
training/RMSprop/sub_4/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
|
training/RMSprop/sub_4Subtraining/RMSprop/sub_4/x"training/RMSprop/ReadVariableOp_10*
_output_shapes
: *
T0

training/RMSprop/Square_2SquareItraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/b_acc_3*
T0*
_output_shapes
:0
u
training/RMSprop/mul_7Multraining/RMSprop/sub_4training/RMSprop/Square_2*
_output_shapes
:0*
T0
r
training/RMSprop/add_4Addtraining/RMSprop/mul_6training/RMSprop/mul_7*
T0*
_output_shapes
:0
y
#training/RMSprop/AssignVariableOp_2AssignVariableOptraining/RMSprop/Variable_2training/RMSprop/add_4*
dtype0
 
"training/RMSprop/ReadVariableOp_11ReadVariableOptraining/RMSprop/Variable_2$^training/RMSprop/AssignVariableOp_2*
dtype0*
_output_shapes
:0
e
"training/RMSprop/ReadVariableOp_12ReadVariableOp
RMSprop/lr*
_output_shapes
: *
dtype0
Б
training/RMSprop/mul_8Mul"training/RMSprop/ReadVariableOp_12Itraining/RMSprop/gradients/gru_1/while/strided_slice_3/Enter_grad/b_acc_3*
T0*
_output_shapes
:0
]
training/RMSprop/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_6Const*
dtype0*
_output_shapes
: *
valueB
 *  

(training/RMSprop/clip_by_value_2/MinimumMinimumtraining/RMSprop/add_4training/RMSprop/Const_6*
_output_shapes
:0*
T0

 training/RMSprop/clip_by_value_2Maximum(training/RMSprop/clip_by_value_2/Minimumtraining/RMSprop/Const_5*
T0*
_output_shapes
:0
f
training/RMSprop/Sqrt_2Sqrt training/RMSprop/clip_by_value_2*
T0*
_output_shapes
:0
]
training/RMSprop/add_5/yConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0
u
training/RMSprop/add_5Addtraining/RMSprop/Sqrt_2training/RMSprop/add_5/y*
_output_shapes
:0*
T0
z
training/RMSprop/truediv_2RealDivtraining/RMSprop/mul_8training/RMSprop/add_5*
_output_shapes
:0*
T0
x
training/RMSprop/sub_5Subgru_1/gru_cell/bias/readtraining/RMSprop/truediv_2*
_output_shapes
:0*
T0
Ц
training/RMSprop/Assign_2Assigngru_1/gru_cell/biastraining/RMSprop/sub_5*
use_locking(*
T0*&
_class
loc:@gru_1/gru_cell/bias*
validate_shape(*
_output_shapes
:0
f
"training/RMSprop/ReadVariableOp_13ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 

%training/RMSprop/mul_9/ReadVariableOpReadVariableOptraining/RMSprop/Variable_3*
dtype0*
_output_shapes

:

training/RMSprop/mul_9Mul"training/RMSprop/ReadVariableOp_13%training/RMSprop/mul_9/ReadVariableOp*
_output_shapes

:*
T0
f
"training/RMSprop/ReadVariableOp_14ReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
]
training/RMSprop/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
|
training/RMSprop/sub_6Subtraining/RMSprop/sub_6/x"training/RMSprop/ReadVariableOp_14*
T0*
_output_shapes
: 

training/RMSprop/Square_3Square7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:*
T0
z
training/RMSprop/mul_10Multraining/RMSprop/sub_6training/RMSprop/Square_3*
T0*
_output_shapes

:
w
training/RMSprop/add_6Addtraining/RMSprop/mul_9training/RMSprop/mul_10*
T0*
_output_shapes

:
y
#training/RMSprop/AssignVariableOp_3AssignVariableOptraining/RMSprop/Variable_3training/RMSprop/add_6*
dtype0
Є
"training/RMSprop/ReadVariableOp_15ReadVariableOptraining/RMSprop/Variable_3$^training/RMSprop/AssignVariableOp_3*
dtype0*
_output_shapes

:
e
"training/RMSprop/ReadVariableOp_16ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
Є
training/RMSprop/mul_11Mul"training/RMSprop/ReadVariableOp_167training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
]
training/RMSprop/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_8Const*
valueB
 *  *
dtype0*
_output_shapes
: 

(training/RMSprop/clip_by_value_3/MinimumMinimumtraining/RMSprop/add_6training/RMSprop/Const_8*
T0*
_output_shapes

:

 training/RMSprop/clip_by_value_3Maximum(training/RMSprop/clip_by_value_3/Minimumtraining/RMSprop/Const_7*
T0*
_output_shapes

:
j
training/RMSprop/Sqrt_3Sqrt training/RMSprop/clip_by_value_3*
T0*
_output_shapes

:
]
training/RMSprop/add_7/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
y
training/RMSprop/add_7Addtraining/RMSprop/Sqrt_3training/RMSprop/add_7/y*
T0*
_output_shapes

:

training/RMSprop/truediv_3RealDivtraining/RMSprop/mul_11training/RMSprop/add_7*
_output_shapes

:*
T0
w
training/RMSprop/sub_7Subdense_1/kernel/readtraining/RMSprop/truediv_3*
T0*
_output_shapes

:
Р
training/RMSprop/Assign_3Assigndense_1/kerneltraining/RMSprop/sub_7*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*!
_class
loc:@dense_1/kernel
f
"training/RMSprop/ReadVariableOp_17ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
~
&training/RMSprop/mul_12/ReadVariableOpReadVariableOptraining/RMSprop/Variable_4*
dtype0*
_output_shapes
:

training/RMSprop/mul_12Mul"training/RMSprop/ReadVariableOp_17&training/RMSprop/mul_12/ReadVariableOp*
T0*
_output_shapes
:
f
"training/RMSprop/ReadVariableOp_18ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
]
training/RMSprop/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
|
training/RMSprop/sub_8Subtraining/RMSprop/sub_8/x"training/RMSprop/ReadVariableOp_18*
_output_shapes
: *
T0

training/RMSprop/Square_4Square;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
v
training/RMSprop/mul_13Multraining/RMSprop/sub_8training/RMSprop/Square_4*
T0*
_output_shapes
:
t
training/RMSprop/add_8Addtraining/RMSprop/mul_12training/RMSprop/mul_13*
T0*
_output_shapes
:
y
#training/RMSprop/AssignVariableOp_4AssignVariableOptraining/RMSprop/Variable_4training/RMSprop/add_8*
dtype0
 
"training/RMSprop/ReadVariableOp_19ReadVariableOptraining/RMSprop/Variable_4$^training/RMSprop/AssignVariableOp_4*
dtype0*
_output_shapes
:
e
"training/RMSprop/ReadVariableOp_20ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
Є
training/RMSprop/mul_14Mul"training/RMSprop/ReadVariableOp_20;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
]
training/RMSprop/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
^
training/RMSprop/Const_10Const*
valueB
 *  *
dtype0*
_output_shapes
: 

(training/RMSprop/clip_by_value_4/MinimumMinimumtraining/RMSprop/add_8training/RMSprop/Const_10*
_output_shapes
:*
T0

 training/RMSprop/clip_by_value_4Maximum(training/RMSprop/clip_by_value_4/Minimumtraining/RMSprop/Const_9*
_output_shapes
:*
T0
f
training/RMSprop/Sqrt_4Sqrt training/RMSprop/clip_by_value_4*
T0*
_output_shapes
:
]
training/RMSprop/add_9/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3
u
training/RMSprop/add_9Addtraining/RMSprop/Sqrt_4training/RMSprop/add_9/y*
_output_shapes
:*
T0
{
training/RMSprop/truediv_4RealDivtraining/RMSprop/mul_14training/RMSprop/add_9*
T0*
_output_shapes
:
q
training/RMSprop/sub_9Subdense_1/bias/readtraining/RMSprop/truediv_4*
_output_shapes
:*
T0
И
training/RMSprop/Assign_4Assigndense_1/biastraining/RMSprop/sub_9*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
Ў
training/group_depsNoOp	^loss/mul#^metrics/mean_absolute_error/Mean_1 ^training/RMSprop/ReadVariableOp"^training/RMSprop/ReadVariableOp_3^training/RMSprop/Assign"^training/RMSprop/ReadVariableOp_7^training/RMSprop/Assign_1#^training/RMSprop/ReadVariableOp_11^training/RMSprop/Assign_2#^training/RMSprop/ReadVariableOp_15^training/RMSprop/Assign_3#^training/RMSprop/ReadVariableOp_19^training/RMSprop/Assign_4
L
VarIsInitializedOpVarIsInitializedOp
RMSprop/lr*
_output_shapes
: 
O
VarIsInitializedOp_1VarIsInitializedOpRMSprop/rho*
_output_shapes
: 
Q
VarIsInitializedOp_2VarIsInitializedOpRMSprop/decay*
_output_shapes
: 
V
VarIsInitializedOp_3VarIsInitializedOpRMSprop/iterations*
_output_shapes
: 
]
VarIsInitializedOp_4VarIsInitializedOptraining/RMSprop/Variable*
_output_shapes
: 
_
VarIsInitializedOp_5VarIsInitializedOptraining/RMSprop/Variable_1*
_output_shapes
: 
_
VarIsInitializedOp_6VarIsInitializedOptraining/RMSprop/Variable_2*
_output_shapes
: 
_
VarIsInitializedOp_7VarIsInitializedOptraining/RMSprop/Variable_3*
_output_shapes
: 
_
VarIsInitializedOp_8VarIsInitializedOptraining/RMSprop/Variable_4*
_output_shapes
: 
Ё
init_1NoOp^RMSprop/lr/Assign^RMSprop/rho/Assign^RMSprop/decay/Assign^RMSprop/iterations/Assign!^training/RMSprop/Variable/Assign#^training/RMSprop/Variable_1/Assign#^training/RMSprop/Variable_2/Assign#^training/RMSprop/Variable_3/Assign#^training/RMSprop/Variable_4/Assign
^
Placeholder_5Placeholder*
dtype0*
_output_shapes

:0*
shape
:0
[
AssignVariableOpAssignVariableOptraining/RMSprop/VariablePlaceholder_5*
dtype0
{
ReadVariableOpReadVariableOptraining/RMSprop/Variable^AssignVariableOp*
dtype0*
_output_shapes

:0
^
Placeholder_6Placeholder*
shape
:0*
dtype0*
_output_shapes

:0
_
AssignVariableOp_1AssignVariableOptraining/RMSprop/Variable_1Placeholder_6*
dtype0

ReadVariableOp_1ReadVariableOptraining/RMSprop/Variable_1^AssignVariableOp_1*
dtype0*
_output_shapes

:0
V
Placeholder_7Placeholder*
dtype0*
_output_shapes
:0*
shape:0
_
AssignVariableOp_2AssignVariableOptraining/RMSprop/Variable_2Placeholder_7*
dtype0
}
ReadVariableOp_2ReadVariableOptraining/RMSprop/Variable_2^AssignVariableOp_2*
_output_shapes
:0*
dtype0
^
Placeholder_8Placeholder*
dtype0*
_output_shapes

:*
shape
:
_
AssignVariableOp_3AssignVariableOptraining/RMSprop/Variable_3Placeholder_8*
dtype0

ReadVariableOp_3ReadVariableOptraining/RMSprop/Variable_3^AssignVariableOp_3*
dtype0*
_output_shapes

:
V
Placeholder_9Placeholder*
shape:*
dtype0*
_output_shapes
:
_
AssignVariableOp_4AssignVariableOptraining/RMSprop/Variable_4Placeholder_9*
dtype0
}
ReadVariableOp_4ReadVariableOptraining/RMSprop/Variable_4^AssignVariableOp_4*
dtype0*
_output_shapes
:
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_2c1201cd380f49ac8402af1b25ee9fe1/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 

save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*Ы
valueСBОBRMSprop/decayBRMSprop/iterationsB
RMSprop/lrBRMSprop/rhoBdense_1/biasBdense_1/kernelBgru_1/gru_cell/biasBgru_1/gru_cell/kernelBgru_1/gru_cell/recurrent_kernelBtraining/RMSprop/VariableBtraining/RMSprop/Variable_1Btraining/RMSprop/Variable_2Btraining/RMSprop/Variable_3Btraining/RMSprop/Variable_4

save/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ы
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices!RMSprop/decay/Read/ReadVariableOp&RMSprop/iterations/Read/ReadVariableOpRMSprop/lr/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOpdense_1/biasdense_1/kernelgru_1/gru_cell/biasgru_1/gru_cell/kernelgru_1/gru_cell/recurrent_kernel-training/RMSprop/Variable/Read/ReadVariableOp/training/RMSprop/Variable_1/Read/ReadVariableOp/training/RMSprop/Variable_2/Read/ReadVariableOp/training/RMSprop/Variable_3/Read/ReadVariableOp/training/RMSprop/Variable_4/Read/ReadVariableOp*
dtypes
2	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*

axis *
N*
_output_shapes
:*
T0
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
_output_shapes
: *
T0

save/RestoreV2/tensor_namesConst*Ы
valueСBОBRMSprop/decayBRMSprop/iterationsB
RMSprop/lrBRMSprop/rhoBdense_1/biasBdense_1/kernelBgru_1/gru_cell/biasBgru_1/gru_cell/kernelBgru_1/gru_cell/recurrent_kernelBtraining/RMSprop/VariableBtraining/RMSprop/Variable_1Btraining/RMSprop/Variable_2Btraining/RMSprop/Variable_3Btraining/RMSprop/Variable_4*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
б
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*L
_output_shapes:
8::::::::::::::*
dtypes
2	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
V
save/AssignVariableOpAssignVariableOpRMSprop/decaysave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
_output_shapes
:*
T0	
]
save/AssignVariableOp_1AssignVariableOpRMSprop/iterationssave/Identity_2*
dtype0	
P
save/Identity_3Identitysave/RestoreV2:2*
_output_shapes
:*
T0
U
save/AssignVariableOp_2AssignVariableOp
RMSprop/lrsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
V
save/AssignVariableOp_3AssignVariableOpRMSprop/rhosave/Identity_4*
dtype0
Є
save/AssignAssigndense_1/biassave/RestoreV2:4*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
Ў
save/Assign_1Assigndense_1/kernelsave/RestoreV2:5*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*!
_class
loc:@dense_1/kernel
Д
save/Assign_2Assigngru_1/gru_cell/biassave/RestoreV2:6*
T0*&
_class
loc:@gru_1/gru_cell/bias*
validate_shape(*
_output_shapes
:0*
use_locking(
М
save/Assign_3Assigngru_1/gru_cell/kernelsave/RestoreV2:7*
use_locking(*
T0*(
_class
loc:@gru_1/gru_cell/kernel*
validate_shape(*
_output_shapes

:0
а
save/Assign_4Assigngru_1/gru_cell/recurrent_kernelsave/RestoreV2:8*
use_locking(*
T0*2
_class(
&$loc:@gru_1/gru_cell/recurrent_kernel*
validate_shape(*
_output_shapes

:0
P
save/Identity_5Identitysave/RestoreV2:9*
T0*
_output_shapes
:
d
save/AssignVariableOp_4AssignVariableOptraining/RMSprop/Variablesave/Identity_5*
dtype0
Q
save/Identity_6Identitysave/RestoreV2:10*
T0*
_output_shapes
:
f
save/AssignVariableOp_5AssignVariableOptraining/RMSprop/Variable_1save/Identity_6*
dtype0
Q
save/Identity_7Identitysave/RestoreV2:11*
_output_shapes
:*
T0
f
save/AssignVariableOp_6AssignVariableOptraining/RMSprop/Variable_2save/Identity_7*
dtype0
Q
save/Identity_8Identitysave/RestoreV2:12*
_output_shapes
:*
T0
f
save/AssignVariableOp_7AssignVariableOptraining/RMSprop/Variable_3save/Identity_8*
dtype0
Q
save/Identity_9Identitysave/RestoreV2:13*
_output_shapes
:*
T0
f
save/AssignVariableOp_8AssignVariableOptraining/RMSprop/Variable_4save/Identity_9*
dtype0
а
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"к
trainable_variablesТП

gru_1/gru_cell/kernel:0gru_1/gru_cell/kernel/Assigngru_1/gru_cell/kernel/read:022gru_1/gru_cell/kernel/Initializer/random_uniform:0
Ј
!gru_1/gru_cell/recurrent_kernel:0&gru_1/gru_cell/recurrent_kernel/Assign&gru_1/gru_cell/recurrent_kernel/read:023gru_1/gru_cell/recurrent_kernel/Initializer/mul_1:0
x
gru_1/gru_cell/bias:0gru_1/gru_cell/bias/Assigngru_1/gru_cell/bias/read:02'gru_1/gru_cell/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0
K
RMSprop/lr:0RMSprop/lr/Assign(2&RMSprop/lr/Initializer/initial_value:0
N
RMSprop/rho:0RMSprop/rho/Assign(2'RMSprop/rho/Initializer/initial_value:0
T
RMSprop/decay:0RMSprop/decay/Assign(2)RMSprop/decay/Initializer/initial_value:0
c
RMSprop/iterations:0RMSprop/iterations/Assign(2.RMSprop/iterations/Initializer/initial_value:0
[
training/RMSprop/Variable:0 training/RMSprop/Variable/Assign(2training/RMSprop/zeros:0
a
training/RMSprop/Variable_1:0"training/RMSprop/Variable_1/Assign(2training/RMSprop/zeros_1:0
a
training/RMSprop/Variable_2:0"training/RMSprop/Variable_2/Assign(2training/RMSprop/zeros_2:0
a
training/RMSprop/Variable_3:0"training/RMSprop/Variable_3/Assign(2training/RMSprop/zeros_3:0
a
training/RMSprop/Variable_4:0"training/RMSprop/Variable_4/Assign(2training/RMSprop/zeros_4:0"5
cond_contextї4є4
ы
gru_1/cond/cond_textgru_1/cond/pred_id:0gru_1/cond/switch_t:0 *Ѓ
gru_1/cond/dropout/Floor:0
gru_1/cond/dropout/Shape:0
gru_1/cond/dropout/add:0
gru_1/cond/dropout/div:0
gru_1/cond/dropout/keep_prob:0
gru_1/cond/dropout/mul:0
1gru_1/cond/dropout/random_uniform/RandomUniform:0
'gru_1/cond/dropout/random_uniform/max:0
'gru_1/cond/dropout/random_uniform/min:0
'gru_1/cond/dropout/random_uniform/mul:0
'gru_1/cond/dropout/random_uniform/sub:0
#gru_1/cond/dropout/random_uniform:0
gru_1/cond/mul/Switch:1
gru_1/cond/mul/y:0
gru_1/cond/mul:0
gru_1/cond/pred_id:0
gru_1/cond/switch_t:0
gru_1/ones:0'
gru_1/ones:0gru_1/cond/mul/Switch:1,
gru_1/cond/pred_id:0gru_1/cond/pred_id:0.
gru_1/cond/switch_t:0gru_1/cond/switch_t:0
Ж
gru_1/cond/cond_text_1gru_1/cond/pred_id:0gru_1/cond/switch_f:0*ю
gru_1/cond/Switch_1:0
gru_1/cond/Switch_1:1
gru_1/cond/pred_id:0
gru_1/cond/switch_f:0
gru_1/ones:0,
gru_1/cond/pred_id:0gru_1/cond/pred_id:0.
gru_1/cond/switch_f:0gru_1/cond/switch_f:0%
gru_1/ones:0gru_1/cond/Switch_1:0

gru_1/cond_1/cond_textgru_1/cond_1/pred_id:0gru_1/cond_1/switch_t:0 *Я
gru_1/cond_1/dropout/Floor:0
gru_1/cond_1/dropout/Shape:0
gru_1/cond_1/dropout/add:0
gru_1/cond_1/dropout/div:0
 gru_1/cond_1/dropout/keep_prob:0
gru_1/cond_1/dropout/mul:0
3gru_1/cond_1/dropout/random_uniform/RandomUniform:0
)gru_1/cond_1/dropout/random_uniform/max:0
)gru_1/cond_1/dropout/random_uniform/min:0
)gru_1/cond_1/dropout/random_uniform/mul:0
)gru_1/cond_1/dropout/random_uniform/sub:0
%gru_1/cond_1/dropout/random_uniform:0
gru_1/cond_1/mul/Switch:1
gru_1/cond_1/mul/y:0
gru_1/cond_1/mul:0
gru_1/cond_1/pred_id:0
gru_1/cond_1/switch_t:0
gru_1/ones:00
gru_1/cond_1/pred_id:0gru_1/cond_1/pred_id:02
gru_1/cond_1/switch_t:0gru_1/cond_1/switch_t:0)
gru_1/ones:0gru_1/cond_1/mul/Switch:1
Ю
gru_1/cond_1/cond_text_1gru_1/cond_1/pred_id:0gru_1/cond_1/switch_f:0*
gru_1/cond_1/Switch_1:0
gru_1/cond_1/Switch_1:1
gru_1/cond_1/pred_id:0
gru_1/cond_1/switch_f:0
gru_1/ones:00
gru_1/cond_1/pred_id:0gru_1/cond_1/pred_id:0'
gru_1/ones:0gru_1/cond_1/Switch_1:02
gru_1/cond_1/switch_f:0gru_1/cond_1/switch_f:0

gru_1/cond_2/cond_textgru_1/cond_2/pred_id:0gru_1/cond_2/switch_t:0 *Я
gru_1/cond_2/dropout/Floor:0
gru_1/cond_2/dropout/Shape:0
gru_1/cond_2/dropout/add:0
gru_1/cond_2/dropout/div:0
 gru_1/cond_2/dropout/keep_prob:0
gru_1/cond_2/dropout/mul:0
3gru_1/cond_2/dropout/random_uniform/RandomUniform:0
)gru_1/cond_2/dropout/random_uniform/max:0
)gru_1/cond_2/dropout/random_uniform/min:0
)gru_1/cond_2/dropout/random_uniform/mul:0
)gru_1/cond_2/dropout/random_uniform/sub:0
%gru_1/cond_2/dropout/random_uniform:0
gru_1/cond_2/mul/Switch:1
gru_1/cond_2/mul/y:0
gru_1/cond_2/mul:0
gru_1/cond_2/pred_id:0
gru_1/cond_2/switch_t:0
gru_1/ones:0)
gru_1/ones:0gru_1/cond_2/mul/Switch:12
gru_1/cond_2/switch_t:0gru_1/cond_2/switch_t:00
gru_1/cond_2/pred_id:0gru_1/cond_2/pred_id:0
Ю
gru_1/cond_2/cond_text_1gru_1/cond_2/pred_id:0gru_1/cond_2/switch_f:0*
gru_1/cond_2/Switch_1:0
gru_1/cond_2/Switch_1:1
gru_1/cond_2/pred_id:0
gru_1/cond_2/switch_f:0
gru_1/ones:02
gru_1/cond_2/switch_f:0gru_1/cond_2/switch_f:00
gru_1/cond_2/pred_id:0gru_1/cond_2/pred_id:0'
gru_1/ones:0gru_1/cond_2/Switch_1:0
Ё
gru_1/cond_3/cond_textgru_1/cond_3/pred_id:0gru_1/cond_3/switch_t:0 *г
gru_1/cond_3/dropout/Floor:0
gru_1/cond_3/dropout/Shape:0
gru_1/cond_3/dropout/add:0
gru_1/cond_3/dropout/div:0
 gru_1/cond_3/dropout/keep_prob:0
gru_1/cond_3/dropout/mul:0
3gru_1/cond_3/dropout/random_uniform/RandomUniform:0
)gru_1/cond_3/dropout/random_uniform/max:0
)gru_1/cond_3/dropout/random_uniform/min:0
)gru_1/cond_3/dropout/random_uniform/mul:0
)gru_1/cond_3/dropout/random_uniform/sub:0
%gru_1/cond_3/dropout/random_uniform:0
gru_1/cond_3/mul/Switch:1
gru_1/cond_3/mul/y:0
gru_1/cond_3/mul:0
gru_1/cond_3/pred_id:0
gru_1/cond_3/switch_t:0
gru_1/ones_1:00
gru_1/cond_3/pred_id:0gru_1/cond_3/pred_id:02
gru_1/cond_3/switch_t:0gru_1/cond_3/switch_t:0+
gru_1/ones_1:0gru_1/cond_3/mul/Switch:1
в
gru_1/cond_3/cond_text_1gru_1/cond_3/pred_id:0gru_1/cond_3/switch_f:0*
gru_1/cond_3/Switch_1:0
gru_1/cond_3/Switch_1:1
gru_1/cond_3/pred_id:0
gru_1/cond_3/switch_f:0
gru_1/ones_1:00
gru_1/cond_3/pred_id:0gru_1/cond_3/pred_id:02
gru_1/cond_3/switch_f:0gru_1/cond_3/switch_f:0)
gru_1/ones_1:0gru_1/cond_3/Switch_1:0
Ё
gru_1/cond_4/cond_textgru_1/cond_4/pred_id:0gru_1/cond_4/switch_t:0 *г
gru_1/cond_4/dropout/Floor:0
gru_1/cond_4/dropout/Shape:0
gru_1/cond_4/dropout/add:0
gru_1/cond_4/dropout/div:0
 gru_1/cond_4/dropout/keep_prob:0
gru_1/cond_4/dropout/mul:0
3gru_1/cond_4/dropout/random_uniform/RandomUniform:0
)gru_1/cond_4/dropout/random_uniform/max:0
)gru_1/cond_4/dropout/random_uniform/min:0
)gru_1/cond_4/dropout/random_uniform/mul:0
)gru_1/cond_4/dropout/random_uniform/sub:0
%gru_1/cond_4/dropout/random_uniform:0
gru_1/cond_4/mul/Switch:1
gru_1/cond_4/mul/y:0
gru_1/cond_4/mul:0
gru_1/cond_4/pred_id:0
gru_1/cond_4/switch_t:0
gru_1/ones_1:0+
gru_1/ones_1:0gru_1/cond_4/mul/Switch:12
gru_1/cond_4/switch_t:0gru_1/cond_4/switch_t:00
gru_1/cond_4/pred_id:0gru_1/cond_4/pred_id:0
в
gru_1/cond_4/cond_text_1gru_1/cond_4/pred_id:0gru_1/cond_4/switch_f:0*
gru_1/cond_4/Switch_1:0
gru_1/cond_4/Switch_1:1
gru_1/cond_4/pred_id:0
gru_1/cond_4/switch_f:0
gru_1/ones_1:0)
gru_1/ones_1:0gru_1/cond_4/Switch_1:02
gru_1/cond_4/switch_f:0gru_1/cond_4/switch_f:00
gru_1/cond_4/pred_id:0gru_1/cond_4/pred_id:0
Ё
gru_1/cond_5/cond_textgru_1/cond_5/pred_id:0gru_1/cond_5/switch_t:0 *г
gru_1/cond_5/dropout/Floor:0
gru_1/cond_5/dropout/Shape:0
gru_1/cond_5/dropout/add:0
gru_1/cond_5/dropout/div:0
 gru_1/cond_5/dropout/keep_prob:0
gru_1/cond_5/dropout/mul:0
3gru_1/cond_5/dropout/random_uniform/RandomUniform:0
)gru_1/cond_5/dropout/random_uniform/max:0
)gru_1/cond_5/dropout/random_uniform/min:0
)gru_1/cond_5/dropout/random_uniform/mul:0
)gru_1/cond_5/dropout/random_uniform/sub:0
%gru_1/cond_5/dropout/random_uniform:0
gru_1/cond_5/mul/Switch:1
gru_1/cond_5/mul/y:0
gru_1/cond_5/mul:0
gru_1/cond_5/pred_id:0
gru_1/cond_5/switch_t:0
gru_1/ones_1:00
gru_1/cond_5/pred_id:0gru_1/cond_5/pred_id:02
gru_1/cond_5/switch_t:0gru_1/cond_5/switch_t:0+
gru_1/ones_1:0gru_1/cond_5/mul/Switch:1
в
gru_1/cond_5/cond_text_1gru_1/cond_5/pred_id:0gru_1/cond_5/switch_f:0*
gru_1/cond_5/Switch_1:0
gru_1/cond_5/Switch_1:1
gru_1/cond_5/pred_id:0
gru_1/cond_5/switch_f:0
gru_1/ones_1:0)
gru_1/ones_1:0gru_1/cond_5/Switch_1:02
gru_1/cond_5/switch_f:0gru_1/cond_5/switch_f:00
gru_1/cond_5/pred_id:0gru_1/cond_5/pred_id:0"ип
while_contextХпСп
Нп
gru_1/while/while_context  *gru_1/while/LoopCond:02gru_1/while/Merge:0:gru_1/while/Identity:0Bgru_1/while/Exit:0Bgru_1/while/Exit_1:0Bgru_1/while/Exit_2:0B&training/RMSprop/gradients/f_count_2:0Jн
gru_1/TensorArray:0
Bgru_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
gru_1/TensorArray_1:0
gru_1/cond/Merge:0
gru_1/cond_1/Merge:0
gru_1/cond_2/Merge:0
gru_1/cond_3/Merge:0
gru_1/cond_4/Merge:0
gru_1/cond_5/Merge:0
gru_1/gru_cell/bias/read:0
gru_1/gru_cell/kernel/read:0
&gru_1/gru_cell/recurrent_kernel/read:0
gru_1/strided_slice:0
gru_1/while/BiasAdd:0
gru_1/while/BiasAdd_1:0
gru_1/while/BiasAdd_2:0
gru_1/while/Const:0
gru_1/while/Const_1:0
gru_1/while/Const_2:0
gru_1/while/Const_3:0
gru_1/while/Enter:0
gru_1/while/Enter_1:0
gru_1/while/Enter_2:0
gru_1/while/Exit:0
gru_1/while/Exit_1:0
gru_1/while/Exit_2:0
gru_1/while/Identity:0
gru_1/while/Identity_1:0
gru_1/while/Identity_2:0
gru_1/while/Less/Enter:0
gru_1/while/Less:0
gru_1/while/LoopCond:0
gru_1/while/MatMul:0
gru_1/while/MatMul_1:0
gru_1/while/MatMul_2:0
gru_1/while/MatMul_3:0
gru_1/while/MatMul_4:0
gru_1/while/MatMul_5:0
gru_1/while/Merge:0
gru_1/while/Merge:1
gru_1/while/Merge_1:0
gru_1/while/Merge_1:1
gru_1/while/Merge_2:0
gru_1/while/Merge_2:1
gru_1/while/NextIteration:0
gru_1/while/NextIteration_1:0
gru_1/while/NextIteration_2:0
gru_1/while/Relu:0
gru_1/while/Switch:0
gru_1/while/Switch:1
gru_1/while/Switch_1:0
gru_1/while/Switch_1:1
gru_1/while/Switch_2:0
gru_1/while/Switch_2:1
%gru_1/while/TensorArrayReadV3/Enter:0
'gru_1/while/TensorArrayReadV3/Enter_1:0
gru_1/while/TensorArrayReadV3:0
7gru_1/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
1gru_1/while/TensorArrayWrite/TensorArrayWriteV3:0
gru_1/while/add:0
gru_1/while/add_1/y:0
gru_1/while/add_1:0
gru_1/while/add_2:0
gru_1/while/add_3/y:0
gru_1/while/add_3:0
gru_1/while/add_4:0
gru_1/while/add_5:0
gru_1/while/add_6/y:0
gru_1/while/add_6:0
#gru_1/while/clip_by_value/Minimum:0
gru_1/while/clip_by_value:0
%gru_1/while/clip_by_value_1/Minimum:0
gru_1/while/clip_by_value_1:0
gru_1/while/mul/Enter:0
gru_1/while/mul:0
gru_1/while/mul_1/Enter:0
gru_1/while/mul_10:0
gru_1/while/mul_1:0
gru_1/while/mul_2/Enter:0
gru_1/while/mul_2:0
gru_1/while/mul_3/Enter:0
gru_1/while/mul_3:0
gru_1/while/mul_4/Enter:0
gru_1/while/mul_4:0
gru_1/while/mul_5/Enter:0
gru_1/while/mul_5:0
gru_1/while/mul_6/x:0
gru_1/while/mul_6:0
gru_1/while/mul_7/x:0
gru_1/while/mul_7:0
gru_1/while/mul_8:0
gru_1/while/mul_9:0
!gru_1/while/strided_slice/Enter:0
!gru_1/while/strided_slice/stack:0
#gru_1/while/strided_slice/stack_1:0
#gru_1/while/strided_slice/stack_2:0
gru_1/while/strided_slice:0
#gru_1/while/strided_slice_1/stack:0
%gru_1/while/strided_slice_1/stack_1:0
%gru_1/while/strided_slice_1/stack_2:0
gru_1/while/strided_slice_1:0
#gru_1/while/strided_slice_2/stack:0
%gru_1/while/strided_slice_2/stack_1:0
%gru_1/while/strided_slice_2/stack_2:0
gru_1/while/strided_slice_2:0
#gru_1/while/strided_slice_3/Enter:0
#gru_1/while/strided_slice_3/stack:0
%gru_1/while/strided_slice_3/stack_1:0
%gru_1/while/strided_slice_3/stack_2:0
gru_1/while/strided_slice_3:0
#gru_1/while/strided_slice_4/stack:0
%gru_1/while/strided_slice_4/stack_1:0
%gru_1/while/strided_slice_4/stack_2:0
gru_1/while/strided_slice_4:0
#gru_1/while/strided_slice_5/stack:0
%gru_1/while/strided_slice_5/stack_1:0
%gru_1/while/strided_slice_5/stack_2:0
gru_1/while/strided_slice_5:0
#gru_1/while/strided_slice_6/Enter:0
#gru_1/while/strided_slice_6/stack:0
%gru_1/while/strided_slice_6/stack_1:0
%gru_1/while/strided_slice_6/stack_2:0
gru_1/while/strided_slice_6:0
#gru_1/while/strided_slice_7/stack:0
%gru_1/while/strided_slice_7/stack_1:0
%gru_1/while/strided_slice_7/stack_2:0
gru_1/while/strided_slice_7:0
#gru_1/while/strided_slice_8/stack:0
%gru_1/while/strided_slice_8/stack_1:0
%gru_1/while/strided_slice_8/stack_2:0
gru_1/while/strided_slice_8:0
gru_1/while/sub/x:0
gru_1/while/sub:0
"training/RMSprop/gradients/Add/y:0
 training/RMSprop/gradients/Add:0
"training/RMSprop/gradients/Merge:0
"training/RMSprop/gradients/Merge:1
*training/RMSprop/gradients/NextIteration:0
#training/RMSprop/gradients/Switch:0
#training/RMSprop/gradients/Switch:1
$training/RMSprop/gradients/f_count:0
&training/RMSprop/gradients/f_count_1:0
&training/RMSprop/gradients/f_count_2:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/Enter:0
Itraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/StackPushV2:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/f_acc:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/Enter:0
Ktraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/StackPushV2:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/f_acc:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/Enter:0
Itraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/StackPushV2:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/f_acc:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/Enter:0
Ktraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/StackPushV2:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/f_acc:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/Enter:0
Itraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/StackPushV2:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/f_acc:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/Enter:0
Ktraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/StackPushV2:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/f_acc:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/Enter:0
Itraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/StackPushV2:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/f_acc:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/Enter:0
Ktraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/StackPushV2:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/f_acc:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/Enter:0
Itraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/StackPushV2:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/f_acc:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/Enter:0
Ktraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/StackPushV2:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/f_acc:0
Atraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/Enter:0
Gtraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/StackPushV2:0
Atraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/f_acc:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/Enter:0
Itraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/StackPushV2:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/f_acc:0
itraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0
otraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2:0
itraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0
Otraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/Enter:0
Utraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/StackPushV2:0
Otraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/f_acc:0
9training/RMSprop/gradients/gru_1/while/add_1_grad/Shape:0
Otraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/Enter:0
Qtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/Enter_1:0
Utraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPushV2:0
Wtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/StackPushV2_1:0
Otraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/f_acc:0
Qtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/f_acc_1:0
9training/RMSprop/gradients/gru_1/while/add_2_grad/Shape:0
;training/RMSprop/gradients/gru_1/while/add_2_grad/Shape_1:0
Otraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/Enter:0
Utraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/StackPushV2:0
Otraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/f_acc:0
9training/RMSprop/gradients/gru_1/while/add_3_grad/Shape:0
Otraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/Enter:0
Qtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/Enter_1:0
Utraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPushV2:0
Wtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/StackPushV2_1:0
Otraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/f_acc:0
Qtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/f_acc_1:0
9training/RMSprop/gradients/gru_1/while/add_4_grad/Shape:0
;training/RMSprop/gradients/gru_1/while/add_4_grad/Shape_1:0
Otraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/Enter:0
Qtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/Enter_1:0
Utraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPushV2:0
Wtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/StackPushV2_1:0
Otraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/f_acc:0
Qtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/f_acc_1:0
9training/RMSprop/gradients/gru_1/while/add_5_grad/Shape:0
;training/RMSprop/gradients/gru_1/while/add_5_grad/Shape_1:0
Mtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/Enter:0
Otraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/Enter_1:0
Straining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPushV2:0
Utraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/StackPushV2_1:0
Mtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/f_acc:0
Otraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/f_acc_1:0
7training/RMSprop/gradients/gru_1/while/add_grad/Shape:0
9training/RMSprop/gradients/gru_1/while/add_grad/Shape_1:0
_training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/Enter:0
etraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/StackPushV2:0
_training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/f_acc:0
Straining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/Enter:0
Ytraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/StackPushV2:0
Straining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/f_acc:0
Itraining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/Shape:0
atraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/Enter:0
gtraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/StackPushV2:0
atraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/f_acc:0
Utraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/Enter:0
[training/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/StackPushV2:0
Utraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/f_acc:0
Ktraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/Shape:0
Ytraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/Enter:0
_training/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/StackPushV2:0
Ytraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/f_acc:0
Ptraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/Enter:0
Vtraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/StackPushV2:0
Ptraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/f_acc:0
Ctraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/Shape:0
Wtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/Enter:0
]training/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/StackPushV2:0
Wtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/f_acc:0
Ntraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/Enter:0
Ttraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/StackPushV2:0
Ntraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/f_acc:0
Atraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/Shape:0
Ptraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/Enter:0
Rtraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/Enter_1:0
Vtraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPushV2:0
Xtraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/StackPushV2_1:0
Ptraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/f_acc:0
Rtraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/f_acc_1:0
>training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/Enter:0
Dtraining/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/StackPushV2:0
>training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/f_acc:0
@training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/Enter:0
Ftraining/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/StackPushV2:0
@training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/f_acc:0
:training/RMSprop/gradients/gru_1/while/mul_10_grad/Shape:0
<training/RMSprop/gradients/gru_1/while/mul_10_grad/Shape_1:0
Otraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/Enter:0
Qtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/Enter_1:0
Utraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPushV2:0
Wtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/StackPushV2_1:0
Otraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/f_acc:0
Qtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/f_acc_1:0
9training/RMSprop/gradients/gru_1/while/mul_3_grad/Shape:0
;training/RMSprop/gradients/gru_1/while/mul_3_grad/Shape_1:0
Otraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/Enter:0
Qtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/Enter_1:0
Utraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPushV2:0
Wtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/StackPushV2_1:0
Otraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/f_acc:0
Qtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/f_acc_1:0
9training/RMSprop/gradients/gru_1/while/mul_4_grad/Shape:0
;training/RMSprop/gradients/gru_1/while/mul_4_grad/Shape_1:0
Otraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/Enter:0
Qtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/Enter_1:0
Utraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPushV2:0
Wtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/StackPushV2_1:0
Otraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/f_acc:0
Qtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/f_acc_1:0
9training/RMSprop/gradients/gru_1/while/mul_5_grad/Shape:0
;training/RMSprop/gradients/gru_1/while/mul_5_grad/Shape_1:0
Otraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/Enter:0
Utraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/StackPushV2:0
Otraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/f_acc:0
=training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/Enter:0
Ctraining/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/StackPushV2:0
=training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/f_acc:0
;training/RMSprop/gradients/gru_1/while/mul_6_grad/Shape_1:0
Otraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/Enter:0
Utraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/StackPushV2:0
Otraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/f_acc:0
=training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/Enter:0
Ctraining/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/StackPushV2:0
=training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/f_acc:0
;training/RMSprop/gradients/gru_1/while/mul_7_grad/Shape_1:0
Otraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/Enter:0
Qtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/Enter_1:0
Utraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPushV2:0
Wtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/StackPushV2_1:0
Otraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/f_acc:0
Qtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/f_acc_1:0
=training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/Enter:0
Ctraining/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/StackPushV2:0
=training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/f_acc:0
?training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/Enter:0
Etraining/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/StackPushV2:0
?training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/f_acc:0
9training/RMSprop/gradients/gru_1/while/mul_8_grad/Shape:0
;training/RMSprop/gradients/gru_1/while/mul_8_grad/Shape_1:0
Otraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/Enter:0
Qtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/Enter_1:0
Utraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPushV2:0
Wtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/StackPushV2_1:0
Otraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/f_acc:0
Qtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/f_acc_1:0
=training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/Enter:0
Ctraining/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/StackPushV2:0
=training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/f_acc:0
?training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/Enter:0
Etraining/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/StackPushV2:0
?training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/f_acc:0
9training/RMSprop/gradients/gru_1/while/mul_9_grad/Shape:0
;training/RMSprop/gradients/gru_1/while/mul_9_grad/Shape_1:0
Mtraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/Enter:0
Straining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/StackPushV2:0
Mtraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/f_acc:0
9training/RMSprop/gradients/gru_1/while/sub_grad/Shape_1:0І
Qtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/f_acc_1:0Qtraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/Enter_1:0Є
Ptraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/f_acc:0Ptraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/Enter:0ж
itraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0itraining/RMSprop/gradients/gru_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0~
=training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/f_acc:0=training/RMSprop/gradients/gru_1/while/mul_7_grad/Mul/Enter:0І
Qtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/f_acc_1:0Qtraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/Enter_1:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/f_acc:0Ctraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul/Enter:0
?training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/f_acc:0?training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul_1/Enter:0~
=training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/f_acc:0=training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul/Enter:01
gru_1/cond_3/Merge:0gru_1/while/mul_3/Enter:0
Mtraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/f_acc:0Mtraining/RMSprop/gradients/gru_1/while/sub_grad/BroadcastGradientArgs/Enter:0 
Ntraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/f_acc:0Ntraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/GreaterEqual/Enter:0Ж
Ytraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/f_acc:0Ytraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/BroadcastGradientArgs/Enter:0Ђ
Otraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/f_acc:0Otraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/Enter:0Ђ
Otraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/f_acc:0Otraining/RMSprop/gradients/gru_1/while/mul_8_grad/BroadcastGradientArgs/Enter:0Ђ
Otraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/f_acc_1:0Otraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/Enter_1:0A
gru_1/gru_cell/kernel/read:0!gru_1/while/strided_slice/Enter:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/f_acc:0Etraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul_1/Enter:0Ђ
Otraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/f_acc:0Otraining/RMSprop/gradients/gru_1/while/mul_7_grad/BroadcastGradientArgs/Enter:0І
Qtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/f_acc_1:0Qtraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/Enter_1:0Ђ
Otraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/f_acc:0Otraining/RMSprop/gradients/gru_1/while/mul_6_grad/BroadcastGradientArgs/Enter:0Є
Ptraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/f_acc:0Ptraining/RMSprop/gradients/gru_1/while/clip_by_value_1_grad/GreaterEqual/Enter:0Ђ
Otraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/f_acc:0Otraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/Enter:0Ђ
Otraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/f_acc:0Otraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/Enter:0M
&gru_1/gru_cell/recurrent_kernel/read:0#gru_1/while/strided_slice_6/Enter:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/f_acc:0Ctraining/RMSprop/gradients/gru_1/while/MatMul_2_grad/MatMul/Enter:0Ђ
Otraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/f_acc:0Otraining/RMSprop/gradients/gru_1/while/mul_3_grad/BroadcastGradientArgs/Enter:01
gru_1/cond_2/Merge:0gru_1/while/mul_2/Enter:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/f_acc:0Etraining/RMSprop/gradients/gru_1/while/MatMul_4_grad/MatMul_1/Enter:0
@training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/f_acc:0@training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul_1/Enter:0Т
_training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/f_acc:0_training/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/BroadcastGradientArgs/Enter:0І
Qtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/f_acc_1:0Qtraining/RMSprop/gradients/gru_1/while/mul_4_grad/BroadcastGradientArgs/Enter_1:0
>training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/f_acc:0>training/RMSprop/gradients/gru_1/while/mul_10_grad/Mul/Enter:0І
Qtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/f_acc_1:0Qtraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/Enter_1:0
Atraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/f_acc:0Atraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul/Enter:0І
Qtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/f_acc_1:0Qtraining/RMSprop/gradients/gru_1/while/mul_9_grad/BroadcastGradientArgs/Enter_1:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/f_acc:0Ctraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul/Enter:0~
=training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/f_acc:0=training/RMSprop/gradients/gru_1/while/mul_6_grad/Mul/Enter:0A
gru_1/gru_cell/bias/read:0#gru_1/while/strided_slice_3/Enter:0Ђ
Otraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/f_acc:0Otraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/Enter:0~
=training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/f_acc:0=training/RMSprop/gradients/gru_1/while/mul_8_grad/Mul/Enter:0
?training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/f_acc:0?training/RMSprop/gradients/gru_1/while/mul_9_grad/Mul_1/Enter:0Ђ
Otraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/f_acc:0Otraining/RMSprop/gradients/gru_1/while/add_4_grad/BroadcastGradientArgs/Enter:01
gru_1/cond_1/Merge:0gru_1/while/mul_1/Enter:0Ђ
Otraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/f_acc:0Otraining/RMSprop/gradients/gru_1/while/add_3_grad/BroadcastGradientArgs/Enter:0
Mtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/f_acc:0Mtraining/RMSprop/gradients/gru_1/while/add_grad/BroadcastGradientArgs/Enter:01
gru_1/cond_5/Merge:0gru_1/while/mul_5/Enter:0Ђ
Otraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/f_acc:0Otraining/RMSprop/gradients/gru_1/while/add_2_grad/BroadcastGradientArgs/Enter:0Ђ
Otraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/f_acc:0Otraining/RMSprop/gradients/gru_1/while/add_1_grad/BroadcastGradientArgs/Enter:0І
Qtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/f_acc_1:0Qtraining/RMSprop/gradients/gru_1/while/add_5_grad/BroadcastGradientArgs/Enter_1:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/f_acc:0Etraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul_1/Enter:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/f_acc:0Ctraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul/Enter:0В
Wtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/f_acc:0Wtraining/RMSprop/gradients/gru_1/while/clip_by_value_grad/BroadcastGradientArgs/Enter:01
gru_1/strided_slice:0gru_1/while/Less/Enter:0Ў
Utraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/f_acc:0Utraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/LessEqual/Enter:0Ј
Rtraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/f_acc_1:0Rtraining/RMSprop/gradients/gru_1/while/mul_10_grad/BroadcastGradientArgs/Enter_1:0Њ
Straining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/f_acc:0Straining/RMSprop/gradients/gru_1/while/clip_by_value/Minimum_grad/LessEqual/Enter:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/f_acc:0Etraining/RMSprop/gradients/gru_1/while/MatMul_3_grad/MatMul_1/Enter:0-
gru_1/cond/Merge:0gru_1/while/mul/Enter:0І
Qtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/f_acc_1:0Qtraining/RMSprop/gradients/gru_1/while/mul_5_grad/BroadcastGradientArgs/Enter_1:0>
gru_1/TensorArray_1:0%gru_1/while/TensorArrayReadV3/Enter:01
gru_1/cond_4/Merge:0gru_1/while/mul_4/Enter:0Ц
atraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/f_acc:0atraining/RMSprop/gradients/gru_1/while/clip_by_value_1/Minimum_grad/BroadcastGradientArgs/Enter:0m
Bgru_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0'gru_1/while/TensorArrayReadV3/Enter_1:0N
gru_1/TensorArray:07gru_1/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
Etraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/f_acc:0Etraining/RMSprop/gradients/gru_1/while/MatMul_5_grad/MatMul_1/Enter:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/f_acc:0Ctraining/RMSprop/gradients/gru_1/while/MatMul_1_grad/MatMul/Enter:0
Ctraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/f_acc:0Ctraining/RMSprop/gradients/gru_1/while/MatMul_grad/MatMul_1/Enter:0Rgru_1/while/Enter:0Rgru_1/while/Enter_1:0Rgru_1/while/Enter_2:0R&training/RMSprop/gradients/f_count_1:0"а
	variablesТП

gru_1/gru_cell/kernel:0gru_1/gru_cell/kernel/Assigngru_1/gru_cell/kernel/read:022gru_1/gru_cell/kernel/Initializer/random_uniform:0
Ј
!gru_1/gru_cell/recurrent_kernel:0&gru_1/gru_cell/recurrent_kernel/Assign&gru_1/gru_cell/recurrent_kernel/read:023gru_1/gru_cell/recurrent_kernel/Initializer/mul_1:0
x
gru_1/gru_cell/bias:0gru_1/gru_cell/bias/Assigngru_1/gru_cell/bias/read:02'gru_1/gru_cell/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0
K
RMSprop/lr:0RMSprop/lr/Assign(2&RMSprop/lr/Initializer/initial_value:0
N
RMSprop/rho:0RMSprop/rho/Assign(2'RMSprop/rho/Initializer/initial_value:0
T
RMSprop/decay:0RMSprop/decay/Assign(2)RMSprop/decay/Initializer/initial_value:0
c
RMSprop/iterations:0RMSprop/iterations/Assign(2.RMSprop/iterations/Initializer/initial_value:0
[
training/RMSprop/Variable:0 training/RMSprop/Variable/Assign(2training/RMSprop/zeros:0
a
training/RMSprop/Variable_1:0"training/RMSprop/Variable_1/Assign(2training/RMSprop/zeros_1:0
a
training/RMSprop/Variable_2:0"training/RMSprop/Variable_2/Assign(2training/RMSprop/zeros_2:0
a
training/RMSprop/Variable_3:0"training/RMSprop/Variable_3/Assign(2training/RMSprop/zeros_3:0
a
training/RMSprop/Variable_4:0"training/RMSprop/Variable_4/Assign(2training/RMSprop/zeros_4:0*Є
serving_default
:
input1
gru_1_input:0џџџџџџџџџџџџџџџџџџ6

prediction(
dense_1/BiasAdd:0џџџџџџџџџtensorflow/serving/predict