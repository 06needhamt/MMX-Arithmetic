.data
num1 dq 0
num2 dq 0
result dq 0
.code

mmxadd proc
mov qword ptr[num1], rcx
mov qword ptr[num2], rdx 
lea rax, qword ptr [num1]
lea rbx, qword ptr [num2]
movq mm0, qword ptr[rax]
movq mm1, qword ptr[rbx]
paddq mm0,mm1
movq qword ptr [result],mm0
mov rax,result
emms
ret

mmxadd endp

mmxsub proc

mov qword ptr[num1], rcx
mov qword ptr[num2], rdx 
lea rax, qword ptr [num1]
lea rbx, qword ptr [num2]
movq mm0, qword ptr[rax]
movq mm1, qword ptr[rbx]
psubq mm0,mm1
movq qword ptr [result],mm0
mov rax,result
emms
ret

mmxsub endp

mmxmul proc

mov qword ptr[num1], rcx
mov qword ptr[num2], rdx 
lea rax, qword ptr [num1]
lea rbx, qword ptr [num2]
movq mm0, qword ptr[rax]
movq mm1, qword ptr[rbx]
pmaddwd mm0,mm1
movq qword ptr [result],mm0
mov rax,result
emms
ret

mmxmul endp

mmxdiv proc

mov qword ptr[num1], rcx
mov qword ptr[num2], rdx 
lea rax, qword ptr [num1]
lea rbx, qword ptr [num2]
movq xmm0, qword ptr[rax]
movq xmm1, qword ptr[rbx]
divps xmm0,xmm1
movq qword ptr [result],xmm0
mov rax,result
emms
ret

mmxdiv endp
end