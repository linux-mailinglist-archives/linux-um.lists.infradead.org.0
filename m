Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B1A1EB882
	for <lists+linux-um@lfdr.de>; Tue,  2 Jun 2020 11:28:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:MIME-Version:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aeqCKWu0/83/cXY5yRUijUxrOVde7KOIATTNXd+birw=; b=hFwkxv3OXXoCmO
	H2GO0WHIHtXvEEWukD73crxTYPE4RpNcfAINGRGpw8v4F2v7C2vtXEf2cDlIWcnyA8Jce0cfQlyHg
	lLA+Ka3cTY9Zzcx58EaTeYo8q5ukjGBpCkiBZ5VG0fUTt1O9tFQitNDZFPd/QpAIr3GF1hqHTvsdM
	sPgNF+Z97oe6VI4sYpXMM+AnGl9xwQ5wFhwfwb5mSFdej/AxA66H1Q5TFEn38sLLWtXNxTmNhZR8x
	me//Mr8bdrtTHILkVVuYz17GPX+3Zvp1pB69TJcSCMgxHEAdEBtsF+Hmh83ZQgEEBjfzOn9f5g2CK
	cgKFOCsAgQSfwM2cODgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg3De-000792-Al; Tue, 02 Jun 2020 09:28:26 +0000
Received: from mail.cn.fujitsu.com ([183.91.158.132] helo=heian.cn.fujitsu.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg3Db-00077z-WB
 for linux-um@lists.infradead.org; Tue, 02 Jun 2020 09:28:25 +0000
X-IronPort-AV: E=Sophos;i="5.73,463,1583164800"; d="scan'208";a="93653934"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
 by heian.cn.fujitsu.com with ESMTP; 02 Jun 2020 17:28:13 +0800
Received: from G08CNEXMBPEKD06.g08.fujitsu.local (unknown [10.167.33.206])
 by cn.fujitsu.com (Postfix) with ESMTP id 05E134BCC8A5
 for <linux-um@lists.infradead.org>; Tue,  2 Jun 2020 17:28:12 +0800 (CST)
Received: from [10.167.220.69] (10.167.220.69) by
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Tue, 2 Jun 2020 17:28:12 +0800
Message-ID: <5ED61BAA.5080203@cn.fujitsu.com>
Date: Tue, 2 Jun 2020 17:28:10 +0800
From: Xiao Yang <yangx.jy@cn.fujitsu.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.2; zh-CN;
 rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: <linux-um@lists.infradead.org>
Subject: Fwd: How to avoid a lot of './arch/um/include/uapi: No such file
 or directory' warnings
X-Originating-IP: [10.167.220.69]
X-ClientProxiedBy: G08CNEXCHPEKD05.g08.fujitsu.local (10.167.33.203) To
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206)
X-yoursite-MailScanner-ID: 05E134BCC8A5.AD3DA
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: yangx.jy@cn.fujitsu.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_022824_217872_C75D90B5 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [183.91.158.132 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Q2M6IGxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKCkhpLAoKSSBnb3QgYSBsb3Qgb2YgJy4v
YXJjaC91bS9pbmNsdWRlL3VhcGk6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnknCndhcm5pbmdz
IHdoZW4gYnVpbGRpbmcga2VybmVsIHdpdGggdW0gYXJjaDoKLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpyb290QHVidW50dTE4On4vbGludXgtbmV4dCMgbWFrZSBX
PTEgQVJDSD11bSBhbGxtb2Rjb25maWcKLi4uCnJvb3RAdWJ1bnR1MTg6fi9saW51eC1uZXh0IyBt
YWtlIFc9MSBBUkNIPXVtIHByZXBhcmUKLi4uCiAgVVBEICAgICBpbmNsdWRlL2dlbmVyYXRlZC9h
c20tb2Zmc2V0cy5oCiAgQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKY2MxOiB3YXJu
aW5nOiAuL2FyY2gvdW0vaW5jbHVkZS91YXBpOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Clst
V21pc3NpbmctaW5jbHVkZS1kaXJzXQogIENBTEwgICAgc2NyaXB0cy9hdG9taWMvY2hlY2stYXRv
bWljcy5zaAouLi4Kcm9vdEB1YnVudHUxODp+L2xpbnV4LW5leHQjIG1ha2UgVz0xIEFSQ0g9dW0g
bW9kdWxlc19wcmVwYXJlCi4uLgogIENDICAgICAgc2NyaXB0cy9tb2QvZW1wdHkubwpjYzE6IHdh
cm5pbmc6IC4vYXJjaC91bS9pbmNsdWRlL3VhcGk6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkK
Wy1XbWlzc2luZy1pbmNsdWRlLWRpcnNdCiAgTUtFTEYgICBzY3JpcHRzL21vZC9lbGZjb25maWcu
aAogIEhPU1RDQyAgc2NyaXB0cy9tb2QvbW9kcG9zdC5vCiAgQ0MgICAgICBzY3JpcHRzL21vZC9k
ZXZpY2V0YWJsZS1vZmZzZXRzLnMKY2MxOiB3YXJuaW5nOiAuL2FyY2gvdW0vaW5jbHVkZS91YXBp
OiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5ClstV21pc3NpbmctaW5jbHVkZS1kaXJzXQogIEhP
U1RDQyAgc2NyaXB0cy9tb2QvZmlsZTJhbGlhcy5vCiAgSE9TVENDICBzY3JpcHRzL21vZC9zdW12
ZXJzaW9uLm8KICBIT1NUTEQgIHNjcmlwdHMvbW9kL21vZHBvc3QKICBDQyAgICAgIGtlcm5lbC9i
b3VuZHMucwpjYzE6IHdhcm5pbmc6IC4vYXJjaC91bS9pbmNsdWRlL3VhcGk6IE5vIHN1Y2ggZmls
ZSBvciBkaXJlY3RvcnkKWy1XbWlzc2luZy1pbmNsdWRlLWRpcnNdCiAgQ0MgICAgICBhcmNoL3Vt
L2tlcm5lbC9hc20tb2Zmc2V0cy5zCmNjMTogd2FybmluZzogLi9hcmNoL3VtL2luY2x1ZGUvdWFw
aTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQpbLVdtaXNzaW5nLWluY2x1ZGUtZGlyc10KSW4g
ZmlsZSBpbmNsdWRlZCBmcm9tIC4vaW5jbHVkZS9saW51eC91YWNjZXNzLmg6MTE6MCwKICAgICAg
ICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9jcnlwdG8uaDoyMSwKICAgICAgICAgICAg
ICAgICBmcm9tIC4vYXJjaC94ODYvdW0vc2hhcmVkL3N5c2RlcC9rZXJuZWwtb2Zmc2V0cy5oOjUs
CiAgICAgICAgICAgICAgICAgZnJvbSBhcmNoL3VtL2tlcm5lbC9hc20tb2Zmc2V0cy5jOjE6Ci4v
YXJjaC91bS9pbmNsdWRlL2FzbS91YWNjZXNzLmg6IEluIGZ1bmN0aW9uIKGuX19hY2Nlc3Nfb2uh
rzoKLi9hcmNoL3VtL2luY2x1ZGUvYXNtL3VhY2Nlc3MuaDoxNzoyOTogd2FybmluZzogY29tcGFy
aXNvbiBvZiB1bnNpZ25lZApleHByZXNzaW9uID49IDAgaXMgYWx3YXlzIHRydWUgWy1XdHlwZS1s
aW1pdHNdCiAgICAoKCh1bnNpZ25lZCBsb25nKSAoYWRkcikgPj0gRklYQUREUl9VU0VSX1NUQVJU
KSAmJiBcCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgouL2FyY2gvdW0vaW5jbHVkZS9h
c20vdWFjY2Vzcy5oOjQ1OjM6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybwqhrl9fYWNjZXNz
X29rX3ZzeXNjYWxsoa8KICAgX19hY2Nlc3Nfb2tfdnN5c2NhbGwoYWRkciwgc2l6ZSkgfHwKICAg
Xn5+fn5+fn5+fn5+fn5+fn5+fn4KSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGFyY2gvdW0va2VybmVs
L2FzbS1vZmZzZXRzLmM6MTowOgouL2FyY2gveDg2L3VtL3NoYXJlZC9zeXNkZXAva2VybmVsLW9m
ZnNldHMuaDogQXQgdG9wIGxldmVsOgouL2FyY2gveDg2L3VtL3NoYXJlZC9zeXNkZXAva2VybmVs
LW9mZnNldHMuaDo5OjY6IHdhcm5pbmc6IG5vIHByZXZpb3VzCnByb3RvdHlwZSBmb3Igoa5mb2+h
ryBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCiB2b2lkIGZvbyh2b2lkKQogICAgICBefn4KICBDQUxM
ICAgIHNjcmlwdHMvY2hlY2tzeXNjYWxscy5zaApjYzE6IHdhcm5pbmc6IC4vYXJjaC91bS9pbmNs
dWRlL3VhcGk6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKWy1XbWlzc2luZy1pbmNsdWRlLWRp
cnNdCi4uLgpyb290QHVidW50dTE4On4vbGludXgtbmV4dCMgbWFrZSBXPTEgQVJDSD11bQouLi4K
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKSXMgdGhlcmUgYW55
IHdheSB0byBhdm9pZCB0aGUgc2FtZSB3YXJuaW5ncz8gU29ycnksIEkgYW0gbm90IGZhbWlsaWFy
CndpdGggdGhlIGtidWlsZCBvZiB1bSBhcmNoLgoKQmVzdCBSZWdhcmRzLApYaWFvIFlhbmcKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0g
bWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
